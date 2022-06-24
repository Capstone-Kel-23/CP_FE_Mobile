import 'dart:ui';

import 'package:app_invoice/screens/Login/login_page.dart';
import 'package:app_invoice/screens/Login/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ListView(
            children: [
              Container(
                child: Image.asset('assets/images/logo.png'),
              ),
              Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Hai! Selamat datang',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    child: Text('Buat invoices dalam bentuk hitungan detik!',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        // MaterialPageRoute(builder: (_) => DetailCLub(index: index))
                        PageRouteBuilder(pageBuilder:
                            (context, animation, secondaryAnimation) {
                      return RegisterPage();
                    }, transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                      final tween =
                          Tween(begin: const Offset(0, 5), end: Offset.zero);
                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    }));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xff386190)),
                  child: Text('Daftar'),
                ),
              ),
              
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          // MaterialPageRoute(builder: (_) => DetailCLub(index: index))
                          PageRouteBuilder(pageBuilder:
                              (context, animation, secondaryAnimation) {
                        return LoginPage();
                      }, transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                        final tween =
                            Tween(begin: const Offset(0, 5), end: Offset.zero);
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      }));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Text('Sudah memiliki akun? Masuk', style: TextStyle(color: Color(0xff386190)),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
