import 'package:flutter/material.dart';

class PaidTable extends StatefulWidget {
  const PaidTable({Key? key}) : super(key: key);

  @override
  State<PaidTable> createState() => _PaidTableState();
}

class _PaidTableState extends State<PaidTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Table(
            border: TableBorder(
                horizontalInside: BorderSide(
                    width: 1, color: Colors.grey, style: BorderStyle.solid)),
            children: [
              TableRow(children: [
                Text(''),
                Text(
                  'Clients',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Invoices',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Paid',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
                    '80',
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
        ],
      ),
    );
  }
}
