import 'package:app_invoice/models/defaultError_model.dart';
import 'package:dio/dio.dart';
import '../models/login_model.dart';

class AuthApi {
  static login(email, password) async {
    var formlogin = {
      "email": email,
      "password": password,
    };

    var dio = Dio();

    try{
      var response =
        await dio.post('prodapi.tagihin.my.id/api/v1/login', data: formlogin);
      return Login.fromJson(response.data);
    } on DioError catch (error) {
      final defaultError = DefaultError.fromJson(error.response!.data);
      print(error);
      throw defaultError.message!;
    }
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
    var response =
        await dio.post('prodapi.tagihin.my.id/api/v1/register', data: formlogin);
    print(response.data.toString());
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
