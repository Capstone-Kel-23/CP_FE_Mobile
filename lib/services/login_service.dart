import 'dart:math';

import 'package:app_invoice/models/defaultError_model.dart';
import 'package:app_invoice/models/registerError.dart';
import 'package:app_invoice/models/register_model.dart';
import 'package:dio/dio.dart';
import '../models/login_model.dart';

class AuthApi {
  // login(String email, String password) async {
  //   var _dio = Dio();
  //   try {
  //     Response response = await _dio.post(
  //       'http://prodapi.tagihin.my.id/api/v1/login',
  //       data: {'email': email, 'password': password},
  //     );
  //     print(response.data);
  //     //returns the successful user data json object
  //     return response.data;
  //   } on DioError catch (error) {
  //     //returns the error object if any
  //     final defaultError = DefaultError.fromJson(error.response?.data);
  //     print(error);
  //     throw "${defaultError.message}";
  //     // return error.response!.data;
  //   }
  //   // print(response.data.toString());
  // }

  // nyoba login
  Future<Login>  postlogin(String email, String password) async {
    final formlogin = {
      "email": email,
      "password": password,
    };

    final apiLogin = 'http://prodapi.tagihin.my.id/api/v1/login';
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    final response = await dio.post(apiLogin, data: formlogin);
    if (response.statusCode == 200) {
      return Login.fromJson(response.data);
    } else {
      throw Exception('Failed to load post');
    }

    // try {
    //   var response =
    //       await dio.post('http://prodapi.tagihin.my.id/api/v1/login', data: formlogin);
    //   print(response.data);
    // } on DioError catch (error) {
    //   final defaultError = DefaultError.fromJson(error.response?.data);
    //   print(error);
    //   throw "${defaultError.message}";
    // }
    // print(response.data.toString());
  }

  static register(email, fullname, password, username) async {
    var formlogin = {
      "email": email,
      "fullname": fullname,
      "password": password,
      "username": username,
    };

    var dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

    try {
      var response = await dio.post('prodapi.tagihin.my.id/api/v1/register',
          data: formlogin);
      return RegisterModel.fromJson(response.data);
    } on DioError catch (error) {
      final registerError = RegisterError.fromJson(error.response!.data);
      print(error);
      throw registerError.message!;
    }

    // var dio = Dio();
    // var response =
    //     await dio.post('prodapi.tagihin.my.id/api/v1/register', data: formlogin);
    // print(response.data.toString());
  }
}

// class AuthService {

//     final client = Dio();

//   Future<Login> getLogin() async {
//     final url = '103.176.79.65:8080/api/v1/login';

//     try {
//       final response = await client.post(url, data: {
//         'email': 'email', 'password': ''}) ;
//       return Login.fromJson(response.data);
//       // return response.map<footballModel.Football>((e) {return footballModel.Football.fromJson(e);}).toList()
//     } on DioError catch (error) {
//       final defaultError = DefaultError.fromJson(error.response!.data);
//       print(error);
//       throw defaultError.message!;
//     }
//   }
// }
