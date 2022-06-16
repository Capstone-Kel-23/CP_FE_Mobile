import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Client/client_page.dart';
import 'package:app_invoice/screens/Report/report_page.dart';
import 'package:app_invoice/screens/settings/setting_screen.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xFF6692BC),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    color: Color(0xFF0A1B45),
                    child: Image(
                        image: AssetImage('assets/images/DashboardLogo.png')),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 200,
              child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  padding: EdgeInsets.all(20),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.accessibility_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.accessibility_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Client',
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Lihat Semua',
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          faker.image.image(
                            random: true,
                            keywords: ["peopple"]),
                          )
                        // backgroundColor: Colors.green,
                        // child: Text(faker.randomGenerator.string(1))
                        ),
                    title: Text(faker.person.name()),
                    subtitle: Text(faker.randomGenerator.numberOfLength(10)),
                    trailing: Text('Rp. ${faker.randomGenerator.numberOfLength(8)}'),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 30,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: MenuState.home == selectedMenu
                    ? Color(0xFF284B7B)
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                  return MyHomePage();
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
            ),
            IconButton(
              icon: Icon(
                Icons.request_page_outlined,
                color: MenuState.invoice == selectedMenu
                    ? Color(0xFF284B7B)
                    : inActiveIconColor,
                    // Color(0xFFFF7643)
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                  return SettingScreen();
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
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: MenuState.client == selectedMenu
                    ? Color(0xFF284B7B)
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                  return ClientPage();
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
            ),
            IconButton(
              icon: Icon(
                Icons.history_edu_outlined,
                color: MenuState.report == selectedMenu
                    ? Color(0xFF284B7B)
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                  return ReportPage();
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
            ),
            IconButton(
              icon: Icon(
                Icons.settings_outlined,
                color: MenuState.setting == selectedMenu
                    ? Color(0xFF284B7B)
                    : inActiveIconColor,
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                  return SettingScreen();
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
            ),
          ],
        ),
      ),
    );
  }
}
