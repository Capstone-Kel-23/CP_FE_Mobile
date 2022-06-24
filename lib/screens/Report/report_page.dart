import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Report/client_table.dart';
import 'package:app_invoice/screens/Report/paid_table.dart';
import 'package:app_invoice/screens/Report/unpaid_table.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff386190);

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
          'Report',
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
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]),
            child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.all(10),
                labelColor: Colors.white,
                unselectedLabelColor: colorstheme,
                labelStyle: TextStyle(fontSize: 20),
                labelPadding:
                    EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                indicator: BoxDecoration(
                  color: colorstheme,
                  // borderRadius: BorderRadius.circular(20)
                ),
                controller: _tabController,
                tabs: [
                  Text('Paid'),
                  Text('Unpaid'),
                  Text('Client'),
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
                  child: PaidTable(),
                ),
                Container(
                  child: UnpaidTable(),
                ),
                Container(
                  child: ClientTable(),
                ),
              ],
            ),
            // child: TabBarView(
            //   controller: _tabController, children: [
            //   // CardWidget(),
            //   // CardWidget(),
            //   // CardWidget(),
            // ]),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.report,
      ),
    );
  }
}
