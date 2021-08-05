import 'package:el_warsha/screens/homeScreen.dart';
import 'package:el_warsha/screens/onboarding/onboardingScreen.dart';
import 'package:el_warsha/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      title: 'elwarsha',
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        OnboardingScreen.routeName: (ctx) => OnboardingScreen(),
      },
    );
  }
}
