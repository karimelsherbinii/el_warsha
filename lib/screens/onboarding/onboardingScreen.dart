import 'package:el_warsha/screens/onboarding/componants/body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = '/onboarding-screen';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
