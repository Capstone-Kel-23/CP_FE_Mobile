import 'package:app_invoice/screens/Dashboard/home_page.dart';
import 'package:app_invoice/screens/Login/verifikasi_page.dart';
import 'package:app_invoice/view_model/login_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  final url =
      'http://prodapi.tagihin.my.id/api/v1';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _SignUpState();
}

class _SignUpState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final _fullnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  bool passwordVisible = false;
  bool invisibility = true;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Daftar',
          style: GoogleFonts.poppins(color: Color(0xff8b8b8b8b), fontSize: 18),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formKey,
              child: ListView(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter your email",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      suffixIcon: Icon(Icons.email_outlined),
                    ),
                    validator: (email) {
                      if (email != null && !EmailValidator.validate(email)) {
                        return 'Enter a valid email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _fullnameController,
                    decoration: InputDecoration(
                      labelText: "Fullname",
                      hintText: "Enter your fullname",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      suffixIcon: Icon(Icons.person_outline_rounded),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: invisibility,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your password",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      suffixIcon: Icon(Icons.lock_outline_rounded),
                    ),
                    validator: (value) {
                      if (value != null && value.length < 8) {
                        return 'Enter min. 8 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter your username",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        gapPadding: 10,
                      ),
                      suffixIcon: Icon(Icons.person_outline_rounded),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama';
                      }
                      return null;
                    },
                  ),Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Row(
                      children: [
                        Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            value: check,
                            onChanged: (e) {
                              setState(() {
                                check = e!;
                              });
                            }),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Saya menerima segala isi Syarat Penggunaan dan ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Kebijakan Privasi',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: check == true
                        ? (() async {
                            if (formKey.currentState!.validate()) {
                              await authProvider.register(
                                _emailController.text,
                                  _fullnameController.text,
                                  _passwordController.text,
                                  _fullnameController.text);
                              // ignore: use_build_context_synchronously
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return const LoginPage();
                                }),
                              );
                            }
                          })
                        : null,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  //   onPressed: () {
                  //     final isValidForm = formKey.currentState!.validate();
                  //     String username = _nameController.text;
                  //     String email = _emailController.text;
                  //     if (isValidForm) {
                  //       logindata.setBool('login', false);
                  //       logindata.setString('username', username);
                  //       logindata.setString('Email', email);

                  //       Navigator.pushAndRemoveUntil(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => MyHomePage(),
                  //         ),
                  //         // PageTransitionsBuilder()
                  //         (route) => false,
                  //       );
                  //     }
                  //   },
                  //   child:  Text('Register'),
                  // ),
                ],
              )),
        ),
      ),
    );
  }
}
