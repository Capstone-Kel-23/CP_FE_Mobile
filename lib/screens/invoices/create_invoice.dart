import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:app_invoice/screens/invoices/all_invoice.dart';
import 'package:app_invoice/screens/invoices/edit_invoice.dart';
import 'package:app_invoice/screens/invoices/paid_invoice.dart';
import 'package:app_invoice/screens/invoices/preview_invoice.dart';
import 'package:app_invoice/screens/invoices/unpaid_invoice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateInvoice extends StatefulWidget {
  @override
  _CreateInvoiceState createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff386190);

  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Invoices',
          style: TextStyle(fontSize: 27, color: Colors.black),
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: TabBar(controller: _tabController, tabs: [
              Text(
                'Edit',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Preview',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: EditInvoice(),
                ),
                Container(
                  child: PreviewInvoice(),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.invoice,
      ),
    );
  }
}
