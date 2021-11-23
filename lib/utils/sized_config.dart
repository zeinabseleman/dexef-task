

import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;
  static MediaQueryData? _mediaQueryData;

  void init(BuildContext context) {
    print('you are in the init state of size config ');
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
   orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;
  }
  // Get the proportionate height as per screen size


}
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

