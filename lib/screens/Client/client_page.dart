import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Dashboard/home_page.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({ Key? key }) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    color: Colors.white,
                    child: Icon(Icons.search),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('Search'),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
                itemCount: 30,
              ),
            ),
            ],
          )
        ],
        
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.client,
      ),
    );
  }
}