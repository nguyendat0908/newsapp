import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
