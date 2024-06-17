import 'package:flutter/material.dart';
import 'package:news_app/ui/onboarding/onboarding_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> _checkAppState(BuildContext context) async {
    final isComplete = await _isOnBoardingCompleted();
    if (isComplete) {
      if (!context.mounted) {
        return;
      }
      // Di chuyen den man hinh login
    } else {
      if (!context.mounted) {
        return;
      }
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => OnBoardingManagerPage()));
    }
  }

  Future<bool> _isOnBoardingCompleted() async {
    try {
      final SharedPreferences _pref = await SharedPreferences.getInstance();
      final result = _pref.getBool('keyOnboardingComplete');
      return result ?? false;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAppState(context);
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/intro.png',
          height: 174,
          width: 316,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
