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
    nama,
    email,
    phone,
    password,
  ) async {
    await AuthApi.register(nama, email, phone, password);
  }
}