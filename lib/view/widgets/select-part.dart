import 'package:dexef_task/utils/colors.dart';
import 'package:dexef_task/utils/sized_config.dart';
import 'package:dexef_task/view/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SelectPart extends StatelessWidget {
final Function()? onPress;
final String? text;

  const SelectPart({Key? key, this.onPress,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        FlatButton(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize!*2,right: SizeConfig.defaultSize!*2),
            onPressed: onPress!,
            child: CustomText(text: text!,fontSize: 15,color: loginBtnColor,)
    );
  }
}
