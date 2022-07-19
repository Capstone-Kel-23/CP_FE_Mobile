import 'package:app_invoice/models/create_invoice.dart';
import 'package:dio/dio.dart';

class ApiService {

    final _dio = Dio();

  Future<CreateInvoice> postInvoices(String additionalCosts, String client, String date, String dateDue, String description, String invoiceNumber, String items, String logoUrl, int subTotal, int total, String typePayment) async {
    final url = 'http://prodapi.tagihin.my.id/api/v1/invoice';

    
      final response = await _dio.post(url, data: {
        'additional_costs': additionalCosts,
        'client': client,
        'date': date,
        'date_due': dateDue,
        'description': description,
        'invoice_number': invoiceNumber,
        'items': items,
        'logo_url': logoUrl,
        'sub_total': subTotal,
        'total': total,
        'type_payment': typePayment,
      });
      // return response.map<footballModel.Football>((e) {return footballModel.Football.fromJson(e);}).toList();

      if (response.statusCode == 200) {
        final result = CreateInvoice.fromJson(response.data);
        // ditanykana 
        return result;
        
      } else {
        print('${response.statusCode} : ${response.data.toString()}');
        throw response.statusMessage.toString();
      }
    } 
  }





// import 'package:app_invoice/models/create_invoice.dart';
// import 'package:dio/dio.dart';

// class CreateInvoiceAPI{
//   static Future<List<CreateInvoice>> createInvoices() async {
//     final response = await Dio().post('http://prodapi.tagihin.my.id/api/v1/invoice');
//     return (response.data as List)
//         .map((i) => CreateInvoice.fromJson(i))
//         .toList();
//   }
// }