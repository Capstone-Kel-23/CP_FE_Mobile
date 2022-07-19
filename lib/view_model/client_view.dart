import 'package:app_invoice/models/create_invoice.dart';
import 'package:app_invoice/services/invoice_api.dart';
import 'package:flutter/material.dart';




class Inovice extends ChangeNotifier {
  List<CreateInvoice> _respon = [];
  List<CreateInvoice> get response => _respon;

  Future<void> postAllResult(String additionalCosts,String client, String date, String dateDue, String description, String invoiceNumber, String items, String logoUrl, int subTotal, int total, String typePayment) async {
    

    try {
      final newRespon = await ApiService().postInvoices(additionalCosts, client, date, dateDue, description, invoiceNumber, items, logoUrl, subTotal, total, typePayment);

      

      print("hasilviewmodelSuccess: $_respon");
    } catch (e) {
      print("hasilviewmodelerror: $e");
    }

    notifyListeners();
  }
}



// import 'package:app_invoice/models/client_model.dart';
// import 'package:app_invoice/models/create_invoice.dart';
// import 'package:app_invoice/services/client_service.dart';
// import 'package:app_invoice/services/invoice_api.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http

// class ClientView extends ChangeNotifier{
//   bool loading = false;
//   bool isBack = false;
//   Future<void> postData(CreateInvoice body) async {
//     loading = true;
//     notifyListeners();
//     http.Response response = (await createInvoices(body))!;
//     if (response.statusCode == 200) {
//       isBack = true;

//     }
//     loading = false;
//     notifyListeners();
//   }
// }

