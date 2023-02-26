import 'dart:async';

import 'package:flutter/material.dart';

import '../api/login.dart';

class UserProvider with ChangeNotifier {
  String token = "";
  String refresh = "";
  bool error = false;
  bool loading = false;

  var loginEmailController = TextEditingController(text: "asd@dfsf.com");
  var loginPassController = TextEditingController(text: "12344");

  Future login() async {
    debugPrint("attempting to login!!");
    var login = LoginResponse();
    return login
        .login(loginEmailController.text, loginPassController.text)
        .then((value) => {
              setToken(value.accessToken),
              setRefresh(value.refreshToken),
              setError(value.valid)
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

  void setError(bool str) {
    error = !str;
    // debugPrint('setError $error');
    notifyListeners();
  }

  void setLoading() {
    loading = !loading;
    debugPrint('new loading $loading');
    notifyListeners();
  }
}
