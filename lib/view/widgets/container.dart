
import 'package:dexef_task/utils/colors.dart';
import 'package:dexef_task/utils/sized_config.dart';
import 'package:dexef_task/view/widgets/divider.dart';
import 'package:dexef_task/view/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
 final String text;
 final String img;

  const CustomContainer({Key? key, required this.text, required this.img}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
     width: SizeConfig.defaultSize!*12,
     height: SizeConfig.defaultSize!*12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
         color: homeColor
      ),
       child:Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CustomDivider(color: borderColor, width:2, height: SizeConfig.defaultSize!*2),
          SizedBox(width: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img),
              SizedBox(height: 15,),
              CustomText(color: textColor,text:text ,fontSize: 15,)
            ],
          )
        ],
      ),
    );
  }
}
