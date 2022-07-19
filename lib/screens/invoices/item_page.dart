import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
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
                    labelText: 'Item',
                    hintText: 'Item',
                    
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Description',
                    
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Quantity',
                    hintText: 'Quantity',
                    
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Price',
                    hintText: 'Price',
                    
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
