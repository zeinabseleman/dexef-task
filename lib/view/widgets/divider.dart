import 'package:dexef_task/utils/sized_config.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const CustomDivider({Key? key, required this.color, required this.width, required this.height}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(decoration: BoxDecoration(color: color),
      width: width,height:height,child: Text(''),);
  }
}
