import 'package:app_invoice/services/login_auth.dart';
import 'package:flutter/cupertino.dart';


class AuthProvider with ChangeNotifier {
  bool firstTime = true;

  void getStarted() {
    firstTime = false;
    notifyListeners();
  }

  login(email, password) async {
    await AuthApi.login(email, password);
  }

  register(
    fullname,
    email,
    password,
    username,
  ) async {
    await AuthApi.register(fullname, email, password, username);
  }
}