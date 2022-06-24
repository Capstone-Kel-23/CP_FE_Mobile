import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../Widget/search_widget.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({ Key? key }) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
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
          padding: const EdgeInsets.only(left:15.0),
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
      body: ListView(
        children: [
          Column(
            children: [
              buildSearch(),
              Container(
              height: 700,
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
                    subtitle: Text(faker.internet.email()),
                    // subtitle: Text(faker.randomGenerator.numberOfLength(10)),
                    
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 15,
              ),
            ),
            ],
            
          ),
          
        ],
        
                
      ),
      
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
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