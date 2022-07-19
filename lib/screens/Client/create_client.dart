import 'package:app_invoice/enum.dart';
import 'package:app_invoice/screens/Widget/bottom_navbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class CreateClient extends StatefulWidget {
  const CreateClient({Key? key}) : super(key: key);

  @override
  State<CreateClient> createState() => _CreateClientState();
}

class _CreateClientState extends State<CreateClient> {
  final formKey = GlobalKey<FormState>();

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    // type: FileType.custom,
    // allowedExtensions: ['pdf'],
    // mendapat file
    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

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
                // CircleAvatar(
                //   backgroundImage: NetworkImage(
                //     "https://images.unsplash.com/photo-1528421398855-8321179ea180?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                //   ),
                //   radius: 50.0,
                // ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                                ))),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: TextButton(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.green,
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            _pickFile();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter Name',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Email',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    hintText: 'Enter Address',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Town / City',
                    hintText: 'Enter Town / City',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Province / State',
                    hintText: 'ENter Province / State',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Postal / Zip Code',
                    hintText: 'Enter Postal / Zip Code',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Country',
                    hintText: 'Enter Country',
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
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Save')),
              ],
            )),
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.client,
      ),
    );
  }
}
