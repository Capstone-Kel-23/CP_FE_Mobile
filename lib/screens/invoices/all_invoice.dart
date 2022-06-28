import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class AllInvoice extends StatefulWidget {
  const AllInvoice({ Key? key }) : super(key: key);

  @override
  State<AllInvoice> createState() => _AllInvoiceState();
}

class _AllInvoiceState extends State<AllInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
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
                    trailing: Container(
                      height: 30,
                      width: 50,
                      color: Color(0xffB8DCF3),
                      child: Center(child: Text('Paid',style: TextStyle(fontWeight: FontWeight.w600),)),
                    )
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
    );
  }
}