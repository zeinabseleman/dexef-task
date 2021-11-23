
import 'package:dexef_task/utils/colors.dart';
import 'package:dexef_task/utils/sized_config.dart';
import 'package:dexef_task/view/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
 final Function()? onTap;
  final String label;
  final Color buttonColor;

  const CustomButton({Key? key, required this.label,this.onTap,
 required this.buttonColor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GestureDetector(
      onTap:  onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.defaultSize!*1.2),
        height: SizeConfig.defaultSize!*5,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                spreadRadius: 0.1,
                blurRadius: 0.1,
              )
            ],
            color:buttonColor,
           borderRadius: BorderRadius.circular(12)
        ),
        child: Center(
          child:  CustomText(
            text:label,
            fontSize:  SizeConfig.defaultSize !*2,
            fontWeight: FontWeight.bold,
            color: backgroundColor,
            //height: textHeight,
          ),
        ),
      ),
    );
  }
}
