import 'package:dexef_task/utils/colors.dart';
import 'package:dexef_task/utils/sized_config.dart';
import 'package:dexef_task/view/widgets/container.dart';
import 'package:dexef_task/view/widgets/divider.dart';
import 'package:dexef_task/view/widgets/position-widget.dart';
import 'package:dexef_task/view/widgets/select-part.dart';
import 'package:dexef_task/view/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  List<String> imges=[
    'assets/images/Company-pana (1).png',
     'assets/images/freepik--Character--inject-626.png',
    'assets/images/People celebrating Thaipusam festival-bro.png',

  ];

  List<String> text=[
    'العملاء',
    'البضاعه',
    'الموردين'
  ];
  List<String> percent = [
    '12%',
    '12%',
    '12%'
  ];
  List<String> ipNum = [
    '230.234.000,35',
    '230.234.000,35',
    '230.234.000,35'
  ];
  List<Widget> column=[
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/icons8_up_squared_1.png'),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Image.asset('assets/images/icons.png'),
        ),

      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/icons8_up_squared_1.png'),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Image.asset('assets/images/icons.png'),
        ),

      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/icons8_up_squared_1.png'),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Image.asset('assets/images/icons.png'),
        ),

      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
     backgroundColor:backgroundColor ,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: SizeConfig.screenHeight!/2,
              width:SizeConfig.screenWidth!, 
              child: Stack(
               children: [
                 Container(
                     width: SizeConfig.defaultSize!*20,
                     height: SizeConfig.defaultSize!*20,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage('assets/images/Path 650.png'),
                         fit: BoxFit.fill,
                       ),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.only(right: 80,bottom: 70),
                       child: Image.asset('assets/images/icons8_male_user.png'
                       ),
                     )

                 ),

                 PositionedWidget(child:Image.asset('assets/images/Top Banner.png'),
                 left: SizeConfig.defaultSize!*37,top:SizeConfig.defaultSize!*3 ,
                 ),
                 PositionedWidget(child:Image.asset('assets/images/Layer 1.png'),
                   left:SizeConfig.defaultSize!*17,top: SizeConfig.defaultSize!*9,),
                 PositionedWidget(
                   top: SizeConfig.defaultSize!*17,
                   left: SizeConfig.defaultSize!*5,
                   child: Container(
                     height:SizeConfig.defaultSize!*5,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(13),
                         border: Border.all(color: borderColor,width: 1)
                     ),
                     child:Row(
                       children: [
                         SelectPart(text: 'عام',onPress: (){},),
                        CustomDivider(color: borderColor, width: 1, height: SizeConfig.defaultSize!*5),
                         SelectPart(text: 'الفواتير',onPress: (){},),
                         CustomDivider(color: borderColor, width: 1, height: SizeConfig.defaultSize!*5),
                         SelectPart(text: 'التقارير',onPress: (){},),
                       ],
                     ),
                   ),
                 ),
                 PositionedWidget(
                     top: SizeConfig.defaultSize!*27,
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 5),
                       child: Row(
                         children: [
                           CustomContainer(text: 'صافي الأعمال',img: 'assets/images/icons8_bar_chart_2.png',),
                           CustomContainer(text: ' حركه صنف',img: 'assets/images/icons8_layers_2.png',),
                           CustomContainer(text: ' حركه عميل',img: 'assets/images/icons8_customer.png',),

                         ],
                       ),
                     )),

               ],

              ),

            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Path 651.png'),
                    fit: BoxFit.fill,
                  ),
              ),
                child:Padding(
                  padding:  EdgeInsets.symmetric(vertical: SizeConfig.defaultSize!*3),
                  child: ListView.builder(
                      itemBuilder:(ctx,index){
                          return Container(
                            margin: EdgeInsets.symmetric(vertical:SizeConfig.defaultSize!*1,
                              horizontal: SizeConfig.defaultSize!*2,),
                           height: SizeConfig.defaultSize!*13,
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              border: Border.all(color: textColor,width: 1),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(imges[index] ,),
                            Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomText(text: text[index],color: loginBtnColor,fontSize: 20,fontWeight: FontWeight.bold,),
                                      Row(
                                        children: [
                                            CustomText(text: percent[index],color: demoVersionColor,fontWeight:FontWeight.bold,),
                                          SizedBox(width: 18,child: column[index],),
                                         CustomText(text: ipNum[index],color: textColor,fontWeight:FontWeight.bold,)

                                        ],
                                      )
                                    ],
                                  ),
                              ],
                            ),
                          );
                      },
                      itemCount: imges.length),
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
