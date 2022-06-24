import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Login/login_page.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
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
            height: 40,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.grey[100],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Support',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  0.0,
                  2.0,
                ),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              ),
            ]),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Contact Us',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.grey[100],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Bussiness Settings',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  0.0,
                  2.0,
                ),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              ),
            ]),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Edit Bussiness Information',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.grey[100],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Account',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  0.0,
                  2.0,
                ),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              ),
            ]),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Switch Account',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  0.0,
                  2.0,
                ),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              ),
            ]),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'SIgn Up',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  0.0,
                  2.0,
                ),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              ),
            ]),
            child: FlatButton(
                padding: EdgeInsets.all(20),
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
                    Expanded(
                      child: Text(
                        'Log Out',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.setting,
      ),
    );
  }
}


// Container(
//             height: 40,
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             decoration: BoxDecoration(color: Colors.white, boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 offset: const Offset(
//                   0.0,
//                   2.0,
//                 ),
//                 blurRadius: 1.0,
//                 spreadRadius: 0.0,
//               ),
//             ]),
//             child: Row(
//               children: [
//                 FlatButton(
//                   onPressed: () {
//                   logindata.setBool('login', true);
//                   logindata.remove('username');
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const LoginPage(),
//                     ),
//                   );
//                 },
//                   child: Text(
//                     'Log Out',
//                     style: Theme.of(context).textTheme.bodyText1,
//                   ),
//                 ),
//               ],
//             ),
//           ),