import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Client/client_page.dart';
import 'package:app_invoice/screens/Dashboard/home_page.dart';
import 'package:app_invoice/screens/Report/report_page.dart';
import 'package:app_invoice/screens/invoices/invoice_dashboard.dart';
import 'package:app_invoice/screens/settings/setting_screen.dart';
import 'package:flutter/material.dart';

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
                  return InvoicesDashboard();
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
