import 'package:dio/dio.dart';

class AuthApi {
  static login(email, password) async {
    var formlogin = {
      "email": email,
      "password": password,
    };

    var dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    var response =
        await dio.post('http://prodapi.tagihin.my.id/api/v1/login', data: formlogin);
    print(response.data.toString());
  }

  static register(fullname, email, password, username) async {
    var formlogin = {
      "fullname": fullname,
      "email": email,
      "password": password,
      "username": username,
    };

    var dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    var response =
        await dio.post('http://prodapi.tagihin.my.id/api/v1/register', data: formlogin);
    print(response.data.toString());
  }
}