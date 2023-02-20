import 'package:flutter/material.dart';

import '../api/login.dart' as api;
import '../api/login.dart';

class UserProvider with ChangeNotifier {
  late String token;
  late String refresh;
  void login() async {
    debugPrint("attempting to login!!");

    // send http request
    Future<LoginResponse> lr = api.login();
    lr.then(
      (value) =>
          {token = value.accessToken ?? "", refresh = value.refreshToken ?? ""},
    );
  }
}
