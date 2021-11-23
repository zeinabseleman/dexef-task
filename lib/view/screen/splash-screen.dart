
import 'dart:async';

import 'package:dexef_task/utils/colors.dart';
import 'package:dexef_task/utils/sized_config.dart';
import 'package:dexef_task/view/screen/user-login.dart';
import 'package:dexef_task/view/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
      Timer(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (_) =>  LoginScreen()));
      });
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: Image.asset('assets/images/Main Image.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 310,
            left: 100,
            child: Column(
              children: [
                Image.asset('assets/images/textimg.png'),
              ],
            )
          ),
          Positioned(
              top: 350,
              left: 105,
              child: Column(
                children: [
                  Image.asset('assets/images/textimg2.png'),
                ],
              )
          ),
          Positioned(
            top: SizeConfig.screenHeight!/1.1,
            left: 50,

            child: Container(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/Layer 1.png'),
                SizedBox(height: 10,),
                CustomText(text: 'DEXEF Copyrights ,  All rights reserved.',color: textColor,),

              ],
            )),
          ),
        ],
      ),
    );
  }
}
