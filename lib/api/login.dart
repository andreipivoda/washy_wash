import 'package:dio/dio.dart';
import 'dart:async';

class LoginResponse {
  String? accessToken;
  int? expires;
  String? refreshToken;
  bool valid;
  LoginResponse(this.accessToken, this.expires, this.refreshToken, this.valid);
}

Future<LoginResponse> login() async {
  final dio = Dio();
  LoginResponse lr = LoginResponse('accessToken', 0, 'refreshToken', false);
  dio.options.headers['Content-Type'] = 'application/json';
  dio.options.headers['Accept'] = 'application/json';

  try {
    var response = await dio.post('http://supabase.cloud.svx.ro/auth/login',
        data: {"email": "asd@dfsf.com", "password": "1234"});
    if (response.statusCode == 200) {
      var accessToken = (response.data['data']['access_token']);
      var expires = (response.data['data']['expires']);
      var refreshToken = (response.data['data']['refresh_token']);
      return LoginResponse(accessToken, expires, refreshToken, true);
    }
  } catch (e) {
    print(e);
  }
  return lr;
}
