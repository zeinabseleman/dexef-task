import 'package:dexef_task/cubit/auth_cubit.dart';
import 'package:dexef_task/cubit/auth_states.dart';
import 'package:dexef_task/utils/colors.dart';
import 'package:dexef_task/utils/sized_config.dart';
import 'package:dexef_task/view/screen/home-screen.dart';
import 'package:dexef_task/view/widgets/button.dart';
import 'package:dexef_task/view/widgets/text.dart';
import 'package:dexef_task/view/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController usernameEditingController =TextEditingController();
  TextEditingController passwordEditingController =TextEditingController();
  final formKey = GlobalKey<FormState>();
  var authCubit;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(create: (context)=>AuthCubit(),
    child: BlocConsumer<AuthCubit,AuthStates>(
        listener: (context,state){
          if(state is AuthSuccess){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
          }if(state is AuthFailde){
            print('erorr login');
          }
        },
      builder: (context,state){
          authCubit = AuthCubit.get(context);
      return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: SizeConfig.defaultSize!*2),
            child: ListView(
              children: [
                Container(
                  child: ListTile(
                    leading:
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: SizeConfig.defaultSize!*18,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: 'El Hamad Company',color: loginBtnColor,),
                            Divider(color:Colors.black ,
                              endIndent: SizeConfig.defaultSize!*8,thickness: 1,),
                          ],
                        ),
                      ),
                    ),
                    trailing: Container(
                      width: SizeConfig.defaultSize!*9,
                      child: Row(
                        children: [
                          Image.asset('assets/images/icons8_browse_folder_1.png'),
                          Image.asset('assets/images/Group 2395.png'),
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset('assets/images/home icon.png'),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:SizeConfig.defaultSize!*2 ),
                  child: CustomText(text: 'USER LOGIN',fontSize: 22,color: Color(0xFF464040),),
                ),
                Form(
                  key: formKey,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: SizeConfig.defaultSize!*2,
                          horizontal: SizeConfig.defaultSize!*2
                      ),
                      child: Column(
                        children: [
                          CustomTextFormField(text:'User Name',obsecure: false,controller:usernameEditingController ,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'enter your name';
                            }
                          },
                          ),
                          CustomTextFormField(text:'Password',obsecure: true,controller:passwordEditingController ,
                            validator: (value){
                              if(value!.isEmpty){
                                return 'invalid password';
                              }
                            },
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/icons8_checked.png'),
                              SizedBox(width: SizeConfig.defaultSize!*1,),
                              CustomText(text: 'Remember Password',color: textColor,)
                            ],),
                          SizedBox(height: SizeConfig.defaultSize!*7,),
                          CustomButton(buttonColor:loginBtnColor ,label: 'LOG IN',
                            onTap: (){
                               if(formKey.currentState!.validate()){
                                 authCubit.login(usernameEditingController.text,
                                 passwordEditingController.text);

                               }
                            },
                          ),
                          CustomButton(buttonColor:demoVersionColor ,label: 'Demo Version',),

                          CustomText(
                            text: 'Demo Version .You Can Browse Our Dummy Data.\nTo Have A Good Day',
                            color: textColor,
                          )
                        ],
                      ),
                    )
                )


              ],
            ),
          ),
        ),
      );
    },) );
  }
}
