import 'package:app_invoice/screens/Dashboard/home_page.dart';
import 'package:email_validator/email_validator.dart';
// import 'package:epl_sport/screens/home.dart';
// import 'package:epl_sport/screens/login/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _SignUpState();
}

class _SignUpState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
          (route) => false);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Masuk',
          style: GoogleFonts.poppins(color: Color(0xff8b8b8b8b), fontSize: 18),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 45, vertical: 20),
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
                          if (email != null &&
                              !EmailValidator.validate(email)) {
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
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 45, vertical: 20),
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
                          if (value != null && value.length < 5) {
                            return 'Enter min. 5 characters';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final isValidForm = formKey.currentState!.validate();
                          String username = _nameController.text;
                          String email = _emailController.text;
                          if (isValidForm) {
                            logindata.setBool('login', false);
                            logindata.setString('username', username);
                            logindata.setString('Email', email);
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                              ),
                              // PageTransitionsBuilder()
                              (route) => false,
                            );
                          }
                        },
                        child: const Text('Register'),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
