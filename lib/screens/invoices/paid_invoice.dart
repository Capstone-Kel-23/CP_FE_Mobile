import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PaidInvoice extends StatefulWidget {
  const PaidInvoice({ Key? key }) : super(key: key);

  @override
  State<PaidInvoice> createState() => _PaidInvoiceState();
}

class _PaidInvoiceState extends State<PaidInvoice> {
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
                      color: Colors.blue,
                      child: Center(child: Text('Paid',)),
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