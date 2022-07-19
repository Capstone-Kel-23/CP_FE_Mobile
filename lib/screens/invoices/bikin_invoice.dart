import 'package:app_invoice/view_model/client_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Dashboard/home_page.dart';

class BikinInvoice extends StatefulWidget {
  const BikinInvoice({Key? key}) : super(key: key);

  @override
  State<BikinInvoice> createState() => _BikinInvoiceState();
}

class _BikinInvoiceState extends State<BikinInvoice> {
  final formKey = GlobalKey<FormState>();
  final _additionalNameController = TextEditingController();
  final _additionalTotalController = TextEditingController();
  final _additionalTypeController = TextEditingController();
  final _clientAddressController = TextEditingController();
  final _clientCityController = TextEditingController();
  final _clientCountryController = TextEditingController();
  final _clientEmailController = TextEditingController();
  final _clientFirstnameController = TextEditingController();
  final _clientLastnameController = TextEditingController();
  final _clientPhoneController = TextEditingController();
  final _clientPostController = TextEditingController();
  final _clientProvinceController = TextEditingController();
  final _dateController = TextEditingController();
  final _dueDateController = TextEditingController();
  final _descController = TextEditingController();
  final _invNumberController = TextEditingController();
  final _itemsDescController = TextEditingController();
  final _itemsNameController = TextEditingController();
  final _itemsPriceController = TextEditingController();
  final _itemsQuantityController = TextEditingController();
  final _logoController = TextEditingController();
  final _subTotalController = TextEditingController();
  final _typePayController = TextEditingController();
  final _totalController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final postInovice = Provider.of<Inovice>(context);
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formKey,
              child: ListView(
                children: <Widget>[
                  // TextField(
                  //   cursorColor: Colors.black,
                  //   decoration: const InputDecoration(
                  //     hintText: 'Enter Title',
                  //     labelText: 'Title',
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.black),
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(10),
                  //       ),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.black),
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(10),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // TextField(
                  //   cursorColor: Colors.black,
                  //   decoration: const InputDecoration(
                  //     labelText: 'Subheading',
                  //     hintText: 'Subheading',
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.black),
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(10),
                  //       ),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.black),
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(10),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _clientFirstnameController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'FirstName',
                            hintText: 'enter name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _clientEmailController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'email',
                            hintText: 'enter email',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _clientLastnameController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            hintText: 'enter name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _clientPhoneController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'Phone',
                            hintText: 'enter phone number',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _clientProvinceController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'Province',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _clientPhoneController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'Phone',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _clientCityController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'city',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _clientCountryController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'Country',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _clientPostController,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelText: 'Postal Code',
                      hintText: 'Postal Code',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _clientAddressController,
                    maxLines: 3,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                      hintText: 'Address',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _dateController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'Invoice Date',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _dueDateController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'due date',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _descController,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelText: 'Desc',
                      hintText: 'Desc',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _invNumberController,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelText: 'Invoice Number',
                      hintText: 'Subheading',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _itemsNameController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'items name',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _itemsDescController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'item desc',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _itemsPriceController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'item price',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _itemsQuantityController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'item quantity',
                            hintText: 'Nama',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _additionalNameController,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelText: 'Additional_cost',
                      hintText: 'Additional_cost name',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _additionalTotalController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'additional_cost',
                            hintText: 'total',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _additionalTypeController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'additional cost',
                            hintText: 'type',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _logoController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'logo url',
                            hintText: 'logo',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _subTotalController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'sub total',
                            hintText: 'sub total',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          controller: _typePayController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'type payment',
                            hintText: 'payment',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          controller: _totalController,
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            labelText: 'Total',
                            hintText: 'total',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: (() async {
                      if (formKey.currentState!.validate()) {
                        await postInovice.postAllResult(
                            _additionalNameController.text,
                            _clientAddressController.text,
                            _dateController.text,
                            _dueDateController.text,
                            _descController.text,
                            _invNumberController.text,
                            _itemsDescController.text,
                            _logoController.text,
                            int.parse(_subTotalController.text),
                            int.parse(_totalController.text),
                            _typePayController.text);
                        // ignore: use_build_context_synchronously
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (ctx) {
                          return MyHomePage();
                        }), (route) => false);
                      }
                    }),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
