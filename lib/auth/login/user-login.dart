

import 'dart:convert';

import 'package:dexef_task/models/user_model.dart';
import 'package:http/http.dart' as http;

class Authentication {

  Future<UserModel?> login(String userName, String password,) async {
    http.Response response = await
    http.get(

        Uri.parse(
        'http://hrws.dexef.com/Dexef_HR_WebService.asmx/OrangeVerify?ip=185.44.64.217,1433&database=dexef&lang=ar&user_name=$userName&password=$password'),

    );
    return UserModel.fromJson(jsonDecode(response.body));
  }
}