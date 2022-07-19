// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
// import 'package:app_invoice/models/create_invoice.dart';
// import 'package:dio/dio.dart';
// // import 'package:http/http.dart' as http;

// //   Future<http.Response?> postClient(CreateInvoice data) async {
// //   http.Response? response;
// //   try {
// //     response = await http.post(
// //       Uri.parse('http://prodapi.tagihin.my.id/api/v1/invoice'),
// //       body: jsonEncode(data.toJson()),
// //       headers: {
// //         HttpHeaders.contentTypeHeader: 'application/json',
// //       },
// //     );
// //   } catch (e) {
// //     log(e.toString());
// //   }
// //   return response;
// // }




// Future<Client> createClient(String address, String city, String country, String email, String firstName, String lastName, String phoneNumber, String postalCode, String state) async {
//   final url = 'http://prodapi.tagihin.my.id/api/v1/invoice';
//   try{
//     final response
//   }
  
// }











// // final response = await Dio().post(
// //     Uri.parse('http://prodapi.tagihin.my.id/api/v1/invoice'),
// //     body: jsonEncode(<String, String>{
// //       'address': address,
// //       'city': city,
// //       'country': country,
// //       'email': email,
// //       'first_name': firstName,
// //       'last_name': lastName,
// //       'phone_number': phoneNumber,
// //       'postal_code': postalCode,
// //       'state': state,
// //     }),
// //   );

// //   if (response.statusCode == 201) {
// //     // If the server did return a 201 CREATED response,
// //     // then parse the JSON.
// //     return Client.fromJson(jsonDecode(response.body));
// //   } else {
// //     // If the server did not return a 201 CREATED response,
// //     // then throw an exception.
// //     throw Exception('Failed to create album.');
// //   }