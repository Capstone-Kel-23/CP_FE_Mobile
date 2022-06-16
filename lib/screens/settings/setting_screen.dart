import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Dashboard/home_page.dart';
import 'package:app_invoice/screens/Login/login_page.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late SharedPreferences logindata;

  String username = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
              fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage('assets/img/person.jpg')),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            username,
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey[100],
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assetName",
                      width: 22,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'My Account',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey[100],
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assetName",
                      width: 22,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'About Apps',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey[100],
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assetName",
                      width: 22,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Settings',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey[100],
                onPressed: () {
                  logindata.setBool('login', true);
                  logindata.remove('username');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assetName",
                      width: 22,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Log Out',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.setting,
      ),
    );
  }
}
