import 'package:flutter/material.dart';

import '../Welcome/welcome_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 5);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return WelcomePage();
        },
      ), (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
