import 'package:flutter/material.dart';
import 'package:news_app/ui/onboarding/onboarding_page_position.dart';

class OnBoardingViewPage extends StatelessWidget {
  final OnBoardingPagePosition onBoardingPagePosition;
  final VoidCallback nextOnPressed;
  final VoidCallback backOnPressed;
  const OnBoardingViewPage(
      {super.key,
      required this.onBoardingPagePosition,
      required this.nextOnPressed,
      required this.backOnPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHeaderImage(),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              children: [
                _buildBodyText(),
                SizedBox(
                  height: 100,
                ),
                _buildFooterDirec(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderImage() {
    return Image.asset(
      onBoardingPagePosition.OnBoardingPageImages(),
      height: 490,
      width: 428,
      fit: BoxFit.fill,
    );
  }

  Widget _buildBodyText() {
    return Column(
      children: [
        _buildTextTitle(),
        _buildTextScript(),
      ],
    );
  }

  Widget _buildTextTitle() {
    return Text(
      onBoardingPagePosition.OnBoardingPageTitle(),
      style: const TextStyle(
          fontSize: 25,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold,
          color: Color(0xFF000000)),
    );
  }

  Widget _buildTextScript() {
    return Text(
      onBoardingPagePosition.OnBoardingPageContent(),
      style: const TextStyle(
        fontSize: 15,
        fontFamily: 'Lato',
        color: Color(0xFF4E4B66),
      ),
    );
  }

  Widget _buildFooterDirec() {
    return Row(
      children: [
        _buildControl(),
        const Spacer(),
        _buildButtonBackAndNext(),
      ],
    );
  }

  Widget _buildControl() {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: onBoardingPagePosition == OnBoardingPagePosition.page1
                  ? const Color(0xFF1877F2)
                  : const Color(0xFFA0A3BD)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: onBoardingPagePosition == OnBoardingPagePosition.page2
                  ? const Color(0xFF1877F2)
                  : const Color(0xFFA0A3BD)),
        ),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: onBoardingPagePosition == OnBoardingPagePosition.page3
                  ? const Color(0xFF1877F2)
                  : const Color(0xFFA0A3BD)),
        ),
      ],
    );
  }

  Widget _buildButtonBackAndNext() {
    return Row(
      children: [
        TextButton(
          onPressed: backOnPressed,
          child: Text(
            onBoardingPagePosition == OnBoardingPagePosition.page1
                ? ''
                : 'Back',
            style: const TextStyle(color: Color(0xFFB0B3B8)),
          ),
        ),
        ElevatedButton(
          onPressed: nextOnPressed,
          child: Text(
            onBoardingPagePosition == OnBoardingPagePosition.page3
                ? 'Get Started'
                : 'Next',
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1877F2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
        )
      ],
    );
  }
}
