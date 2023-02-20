import 'package:dio/dio.dart';
import 'dart:async';

import 'package:flutter/material.dart';

const LOGINURL = 'http://supabase.cloud.svx.ro/auth/login';

class LoginResponse {
  String accessToken = "";
  int expires = 0;
  String refreshToken = "";
  bool valid = false;
  String error = "Invalid email or password";

  Future<LoginResponse> login() async {
    final dio = Dio();

    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';

    try {
      var response = await dio
          .post(LOGINURL, data: {"email": "asd@dfsf.com", "password": "1234"});
      if (response.statusCode == 200) {
        accessToken = (response.data['data']['access_token']);
        expires = (response.data['data']['expires']);
        refreshToken = (response.data['data']['refresh_token']);
        valid = true;
        return this;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return this;
  }
}
