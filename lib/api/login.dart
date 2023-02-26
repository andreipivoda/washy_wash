import 'package:dio/dio.dart';
import 'dart:async';

import 'package:flutter/material.dart';

const loginURL = 'http://supabase.cloud.svx.ro/auth/login';

class LoginResponse {
  String accessToken = "";
  int expires = 0;
  String refreshToken = "";
  bool valid = false;
  String error = "Invalid email or password";

  Future<LoginResponse> login(String email, String pass) async {
    final dio = Dio();

    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';

    debugPrint("logging with $email $pass");
    try {
      var response = await dio.post(loginURL, data: {
        "email": email,
        "password": pass,
      });
      if (response.statusCode == 200) {
        accessToken = (response.data['data']['access_token']);
        expires = (response.data['data']['expires']);
        refreshToken = (response.data['data']['refresh_token']);
        valid = true;
        error = "";
        return this;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return this;
  }
}
