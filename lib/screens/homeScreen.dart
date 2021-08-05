import 'dart:async';

import 'package:el_warsha/util/constants.dart';
import 'package:el_warsha/util/sizeConfig.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: kPrimaryColor),
          ),
          Positioned(
              top: SizeConfig.screenHeight / 10,
              left: SizeConfig.screenWidth / 2.2,
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 40,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
