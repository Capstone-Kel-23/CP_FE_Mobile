import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Report/client_table.dart';
import 'package:app_invoice/screens/Report/paid_table.dart';
import 'package:app_invoice/screens/Report/unpaid_table.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:app_invoice/screens/Widget/search_widget.dart';
import 'package:app_invoice/screens/invoices/all_invoice.dart';
import 'package:app_invoice/screens/invoices/create_invoice.dart';
import 'package:app_invoice/screens/invoices/paid_invoice.dart';
import 'package:app_invoice/screens/invoices/unpaid_invoice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoicesDashboard extends StatefulWidget {
  @override
  _InvoicesDashboardState createState() => _InvoicesDashboardState();
}

class _InvoicesDashboardState extends State<InvoicesDashboard>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff386190);

  String query = '';

  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
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
            onPressed: () {},
          ),
        ),
      ),
      body: Column(
        children: [
          buildSearch(),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: TabBar(controller: _tabController, tabs: [
              Text(
                'All',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Paid',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Unpaid',
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
                  child: AllInvoice(),
                ),
                Container(
                  child: PaidInvoice(),
                ),
                Container(
                  child: UnpaidInvoice(),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return CreateInvoice();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 1.0);
                    const end = Offset.zero;
                    final tween = Tween(begin: begin, end: end);
                    final offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ));
        },
        backgroundColor: Color(0xFF386190),
        // tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.invoice,
      ),
    );
  }

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Search Invoice',
        onChanged: searchBook,
      );

  void searchBook(String query) {
    this.query = query;
  }
}
