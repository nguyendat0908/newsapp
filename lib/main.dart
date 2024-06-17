import 'package:flutter/material.dart';
import 'package:news_app/ui/onboarding/onboarding_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: OnBoardingManagerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
