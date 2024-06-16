import 'package:flutter/material.dart';

class OnBoardingViewPage extends StatelessWidget {
  const OnBoardingViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHeaderImage(),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20),
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
      'assets/images/Images_onboarding_1.png',
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
    return const Text(
      'Lorem Ipsum is simply dummy',
      style: TextStyle(
          fontSize: 25,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold,
          color: Color(0xFF000000)),
    );
  }

  Widget _buildTextScript() {
    return const Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      style: TextStyle(
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
              borderRadius: BorderRadius.circular(6), color: Color(0xFF1877F2)),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xFFA0A3BD)),
        ),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xFFA0A3BD)),
        ),
      ],
    );
  }

  Widget _buildButtonBackAndNext() {
    return Container();
  }
}
