import 'package:flutter/material.dart';
import 'package:news_app/ui/onboarding/onboarding_page_position.dart';
import 'package:news_app/ui/onboarding/onboarding_view_page.dart';
import 'package:news_app/ui/splash/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingManagerPage extends StatefulWidget {
  const OnBoardingManagerPage({super.key});

  @override
  State<OnBoardingManagerPage> createState() => _OnBoardingManagerPageState();
}

class _OnBoardingManagerPageState extends State<OnBoardingManagerPage> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        OnBoardingViewPage(
          onBoardingPagePosition: OnBoardingPagePosition.page1,
          nextOnPressed: () {
            _pageController.jumpToPage(1);
          },
          backOnPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SplashScreen()));
          },
        ),
        OnBoardingViewPage(
          onBoardingPagePosition: OnBoardingPagePosition.page2,
          nextOnPressed: () {
            _pageController.jumpToPage(2);
          },
          backOnPressed: () {
            _pageController.jumpToPage(0);
          },
        ),
        OnBoardingViewPage(
          onBoardingPagePosition: OnBoardingPagePosition.page3,
          nextOnPressed: () {
            _onBoardingCompleted();
          },
          backOnPressed: () {
            _pageController.jumpToPage(1);
          },
        )
      ],
    );
  }

  Future<void> _onBoardingCompleted() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('keyOnboardingComplete', true);
    } catch (e) {
      print(e);
      return;
    }
  }
}
