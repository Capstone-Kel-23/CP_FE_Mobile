import 'package:flutter/material.dart';

import '../services/login_service.dart';

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