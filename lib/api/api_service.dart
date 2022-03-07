import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import '../Base_api.dart';
import '../model/login_model.dart';
import 'package:http/http.dart' as http;



class APIService {



  List data;
  Future<Type> login(LoginRequestModel requestModel) async {

    print("prior");

    String url = Base_api.baseUrl + "Authentication/auth?Email=" + requestModel.email +
        "&Password=" + requestModel.password + "&IsWebCall=true";



    var response  = await  http.get(Uri.parse(url),);


    //print("Full Resposne: "+response.toString());
    print("User name from server ${jsonDecode(response.body)['user']['userName']}");
    print("User name from server ${jsonDecode(response.body)['user']['password']}");



  }



}
