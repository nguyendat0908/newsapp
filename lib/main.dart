import 'package:flutter/material.dart';
import 'package:news_app/ui/onboarding/onboarding_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: OnBoardingViewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
