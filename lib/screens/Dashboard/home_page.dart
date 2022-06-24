import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/search_widget.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: ListView(
            children: <Widget>[
              Container(
                height: 50,
                color: const Color(0xFF386190),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      
                      child: const Image(
                          image: AssetImage('assets/icons/DashboardLogo.png')),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      child: const Icon(Icons.notifications),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              buildSearch(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 165,
                        decoration:
                            const BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                          ),
                        ]),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: const Text(
                                    'Total Invoices',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  'Paid',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  'Rp. 10.000.000',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ])),
                    Container(
                        width: 165,
                        decoration:
                            // ignore: prefer_const_literals_to_create_immutables
                            const BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                          ),
                        ]),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: const Text(
                                    'Total Invoices',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  'Unpaid',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  'Rp. 10.000.000',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ])),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 84,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                        child: Text(
                          'Create new Invoice',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(primary: const Color(0xff386190)),
                            child: Text('Start',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                    ],
                  )),
              const SizedBox(
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
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                        faker.image.image(random: true, keywords: ["peopple"]),
                      )
                          // backgroundColor: Colors.green,
                          // child: Text(faker.randomGenerator.string(1))
                          ),
                      title: Text(faker.person.name()),
                      subtitle: Text(faker.randomGenerator.numberOfLength(10)),
                      trailing: Text(
                          'Rp. ${faker.randomGenerator.numberOfLength(8)}'),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(
        selectedMenu: MenuState.home,
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



// GridView.count(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 40,
//                   crossAxisSpacing: 40,
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(40),
//                         color: Colors.grey,
//                       ),
//                       child: Text('wkwk'),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(40),
//                         color: Colors.blue,
//                       ),
//                       child: Icon(
//                         Icons.accessibility_rounded,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ])