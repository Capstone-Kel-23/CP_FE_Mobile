import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/search_widget.dart';

class InvoiceEmpty extends StatefulWidget {
  const InvoiceEmpty({Key? key}) : super(key: key);

  @override
  State<InvoiceEmpty> createState() => _InvoiceEmptyState();
}

class _InvoiceEmptyState extends State<InvoiceEmpty> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child: Center(
          child: ListView(
              children: [
                SizedBox(height: 40),
                Container(
                  child: SvgPicture.asset('assets/images/invoice_empty.svg'),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Your invoices will show up here. Click the plus button below to Create your first invoice!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff386190)),
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
}
