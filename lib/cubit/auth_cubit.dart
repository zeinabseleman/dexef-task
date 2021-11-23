import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dexef_task/auth/login/user-login.dart';
import 'package:dexef_task/cubit/auth_states.dart';
import 'package:dexef_task/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates>{
  AuthCubit() : super(AuthInitialState());

  static AuthCubit get(context) => BlocProvider.of(context);

  Authentication authentication = new Authentication();
  UserModel? userModel;

  login(String userName, String password) async {
    userModel = await authentication.login(userName, password);
    print("login success");
    print(userModel!.verification![0].passward);
    if(userModel!.verification![0].passward == generateMd5(password)){
         print('doneeeeee');
         emit(AuthSuccess());
    }else{
      print('erorrrr');
      emit(AuthFailde());
    }

  }
  String generateMd5(String pass){
    return md5.convert(utf8.encode(pass)).toString();
  }
}