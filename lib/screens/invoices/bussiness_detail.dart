import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

class BussinessDetail extends StatefulWidget {
  const BussinessDetail({Key? key}) : super(key: key);

  @override
  State<BussinessDetail> createState() => _BussinessDetailState();
}

class _BussinessDetailState extends State<BussinessDetail> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: ListView(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Title',
                    
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Subheading',
                    hintText: 'Subheading',
                    
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Business Name',
                    hintText: 'Business Name',
                    
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    hintText: 'Phone',
                    
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, child: Text('Save')),
              ],
            )),
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.client,
      ),
    );
  }
}
