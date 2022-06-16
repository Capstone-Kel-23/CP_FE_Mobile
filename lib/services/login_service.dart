import 'package:app_invoice/models/defaultError_model.dart';
import 'package:app_invoice/models/login_model.dart';
import 'package:dio/dio.dart';
import '../models/login_model.dart';

class LoginService {

    final client = Dio();

  Future<Login> getLogin() async {
    final url = '103.176.79.65:8080/api/v1/login';

    try {
      final response = await client.post(url, data: {
        'email': '', 'password': ''}) ;
      return Login.fromJson(response.data);
      // return response.map<footballModel.Football>((e) {return footballModel.Football.fromJson(e);}).toList()
    } on DioError catch (error) {
      final defaultError = DefaultError.fromJson(error.response!.data);
      print(error);
      throw defaultError.message!;
    }
  }
}
