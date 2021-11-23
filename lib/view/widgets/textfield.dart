import 'package:dexef_task/utils/colors.dart';
import 'package:dexef_task/utils/sized_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String text;
  // final void Function() onChanged;
   final String? Function(String?)? validator;
  final bool obsecure;
  final TextEditingController controller;

  const CustomTextFormField({Key? key, required this.text, required this.validator,
    required this.obsecure,  required this.controller}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top:SizeConfig.defaultSize!*1.5,bottom: SizeConfig.defaultSize!*1.5),
      height: SizeConfig.defaultSize!*5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:borderColor,width: 1, ),
        boxShadow: [
          BoxShadow(
              color: shadowColor,
              spreadRadius: 0.1,
              blurRadius: 0.1,
             //offset: Offset(0,1)
          )
        ]
      ),
      child: TextFormField(
        obscureText:obsecure,
        maxLines: 1,
       // onChanged:onChanged ,
        controller: controller,
        validator: validator!,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15),
          border: InputBorder.none,
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: borderColor,
          //     width: 1,
          //   ),
          // ),
          fillColor: Colors.white,
          hintText: text,
          hintStyle: TextStyle(color: textColor),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius:
          //   new BorderRadius.circular(SizeConfig.defaultSize!*1),
          //   borderSide: BorderSide(color: borderColor, width: 1),
          // ),
          // focusedBorder:  OutlineInputBorder(
          //   borderRadius:BorderRadius.circular(SizeConfig.defaultSize!*1),
          //   borderSide: BorderSide(
          //     color: borderColor,
          //     width: 1,
          //   ),
          // ),

        ),
      ),
    );
  }
}
