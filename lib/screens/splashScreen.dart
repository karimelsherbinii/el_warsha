import 'dart:async';

import 'package:el_warsha/util/constants.dart';
import 'package:el_warsha/util/sizeConfig.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed('/onboarding-screen'));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: kPrimaryColor),
          ),
          Positioned(
              top: SizeConfig.screenHeight / 2,
              left: SizeConfig.screenWidth / 2.5,
              child: Row(
                children: [Image(image: AssetImage('assets/images/logo.png'))],
              ))
        ],
      ),
    );
  }
}
