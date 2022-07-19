import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/search_widget.dart';
import 'create_client.dart';

class ClientEmpty extends StatefulWidget {
  const ClientEmpty({Key? key}) : super(key: key);

  @override
  State<ClientEmpty> createState() => _ClientEmptyState();
}

class _ClientEmptyState extends State<ClientEmpty> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Client',
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
        backgroundColor: Colors.white,
      ),
      body:Container(
        child: Center(
          child: ListView(
              children: [
                buildSearch(),
                SizedBox(height: 40),
                Container(
                  child: SvgPicture.asset('assets/images/client_empty.svg'),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text(
                    'Your client will show up here',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff386190)),
                  ),
                )
              ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return CreateClient();
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
        selectedMenu: MenuState.client,
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
