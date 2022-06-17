import 'package:flutter/material.dart';

class ClientTable extends StatefulWidget {
  const ClientTable({Key? key}) : super(key: key);

  @override
  State<ClientTable> createState() => _ClientTableState();
}

class _ClientTableState extends State<ClientTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Table(
              columnWidths: {
                0: FixedColumnWidth(75),
                1: FixedColumnWidth(65),
                2: FixedColumnWidth(115),
              },
              border: TableBorder(
                  horizontalInside: BorderSide(
                      width: 1, color: Colors.grey, style: BorderStyle.solid)),
              children: [
                TableRow(children: [
                  Text(''),
                  Text(
                    'Invoices',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Paid',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Unpaid',
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '2020',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Januari',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Februari',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Maret',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'April',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Mei',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Mei',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Juni',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Juli',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Agustus',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'September',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Oktober',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'November',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Desember',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '40',
                        textAlign: TextAlign.center,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 3.000.000',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Rp. 4.000.000',
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
