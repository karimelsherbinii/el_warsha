import 'package:el_warsha/util/constants.dart';
import 'package:el_warsha/util/sizeConfig.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
