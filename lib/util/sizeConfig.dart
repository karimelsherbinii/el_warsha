import 'dart:ui';
import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  static late double _safeAreaHorizontal;
  static late double safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVerticalWithAppBar;
  static late double safeBlockVerticalWithOutAppBar;
  static late double allAppHaveAppBar;

  static init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    safeAreaVertical = MediaQueryData.fromWindow(window).padding.top +
        MediaQueryData.fromWindow(window).padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    //you need to divedied py 100  to use ===> (safeBlockVerticalWithAppBar/100)
    safeBlockVerticalWithAppBar =
        (screenHeight - safeAreaVertical - AppBar().preferredSize.height) / 100;
    safeBlockVerticalWithOutAppBar =
        (screenHeight - safeAreaVertical - 0) / 100;
    //if all app have appbar you can use this propirty
    allAppHaveAppBar =
        (screenHeight - safeAreaVertical - AppBar().preferredSize.height) / 100;
    print('screenWidth =>>> $screenWidth');
    print('screenHeight =>>> $screenHeight');
    print('padding top =>>> ${_mediaQueryData.padding.top}');
    print(
        'padding top with window =>>>  ${MediaQueryData.fromWindow(window).padding.top}');
    print(
        'padding bottom =>>>  ${MediaQueryData.fromWindow(window).padding.bottom}');

    print('AppBar height =>>>  ${AppBar().preferredSize.height}');
    print('safeBlockVertical =>>>  $safeBlockVerticalWithAppBar');
  }
}
