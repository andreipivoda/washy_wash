import 'dart:async';

import 'package:flutter/material.dart';

import '../api/login.dart' as api;
import '../api/login.dart';

class UserProvider with ChangeNotifier {
  String token = "";
  String refresh = "";
  bool ok = false;

  Future login() async {
    debugPrint("attempting to login!!");
    var login = LoginResponse();
    return login
        .login()
        .then((value) => {
              setToken(value.accessToken),
              setRefresh(value.refreshToken),
              setOk(value.valid)
            })
        .then((_) => _);
  }

  void setToken(String str) {
    token = str;
    notifyListeners();
  }

  void setRefresh(String str) {
    refresh = str;
    notifyListeners();
  }

  void setOk(bool str) {
    ok = str;
    debugPrint('setOk');
    notifyListeners();
  }
}
