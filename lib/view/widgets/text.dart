import 'package:dexef_task/utils/sized_config.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const CustomText({Key? key,  this.text='',  this.fontSize=15,  this.fontWeight=FontWeight.normal,
     this.color=Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
   text,
      style: TextStyle(fontWeight: fontWeight,fontSize: fontSize,color: color),
    );
  }
}
