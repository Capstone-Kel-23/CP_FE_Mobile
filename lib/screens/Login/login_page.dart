import 'package:app_invoice/screens/Dashboard/home_page.dart';
import 'package:app_invoice/screens/Login/lupa_password.dart';
import 'package:app_invoice/view_model/login_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _SignUpState();
}

class _SignUpState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;

  bool passwordVisible = false;
  bool invisibility = true;

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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
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
      body: Container(
        padding: const EdgeInsets.all(16),
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
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10,
                    ),
                    
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
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      gapPadding: 10,
                    ),
                    
                  ),
                  validator: (value) {
                    if (value != null && value.length < 8) {
                      return 'Enter min. 8 characters';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: const Text(
                            'Lupa Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ElevatedButton(
                    onPressed: (() async {
                      if (formKey.currentState!.validate()) {
                        await authProvider.login(
                            _emailController.text, _passwordController.text);
                        // ignore: use_build_context_synchronously
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (ctx) {
                          return MyHomePage();
                        }), (route) => false);
                      }
                    }
                    ),
                  child: const Text('Login'),
                ),

                // tanpa api
                // ElevatedButton(onPressed: () {
                //       final isValidForm = formKey.currentState!.validate();
                //       String email = _emailController.text;
                //       String password = _passwordController.text;
                //       if (isValidForm) {
                //         logindata.setBool('login', false);
                //         logindata.setString('Email', email);
                //         logindata.setString('Password', password);

                //         Navigator.pushAndRemoveUntil(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => MyHomePage(),
                //           ),
                //           // PageTransitionsBuilder()
                //           (route) => false,
                //         );
                //       }
                //     },
                //     child:  Text('Login')),
              ],
            )),
      ),
    );
  }
}

// // FutureBuilder<void>(
// //           future: Provider.of<AuthProvider>(context, listen: false).login(),
// //           builder: (context, AsyncSnapshot<void> snapshot) {
// //             if (snapshot.connectionState == ConnectionState.waiting) {
// //               return const Center(
// //                 child: CircularProgressIndicator(),
// //               );
// //             } else {
// //               final result = Provider.of<AuthProvider>(context);
// //               return

// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bayeue/pages/login/login_page.dart';
// import 'package:flutter_bayeue/pages/register/verifikasi_page.dart';
// import 'package:flutter_bayeue/viewmodel/auth_provider.dart';
// import 'package:provider/provider.dart';

// import '../../view_model/login_auth.dart';

// class RegisterPage extends StatefulWidget {
//   final url =
//       'https://virtserver.swaggerhub.com/gozza/Payment-Point/1.0.0-beta/api/user/';
//   const RegisterPage({Key? key}) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final fromKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _nameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _passwordController = TextEditingController();

//   bool passwordVisible = false;
//   bool invisibility = true;
//   bool check = false;

//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 227, 244, 254),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 25),
//             child: Form(
//               key: fromKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   Image.asset(
//                     'assets/images/regis.png',
//                     height: 200,
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'Register',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 30,
//                           color: Colors.black),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     controller: _emailController,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Nama';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(color: Colors.white),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       hintText: 'Nama',
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _nameController,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Masukan Email';
//                       } else if (!EmailValidator.validate(value)) {
//                         return 'Email Tidak Sesuai';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(color: Colors.white),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       hintText: 'Email',
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     keyboardType: TextInputType.phone,
//                     controller: _phoneController,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Tidak Boleh Kosong';
//                       } else if (value.length < 10) {
//                         return 'Nomor Tidak Valid';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(color: Colors.white),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       hintText: 'Phone',
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                     controller: _passwordController,
//                     obscureText: invisibility,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Masukan Password';
//                       } else if (value.length < 6) {
//                         return 'Masukan minimal 6 karakter';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       suffixIcon: IconButton(
//                         splashRadius: 20,
//                         onPressed: () {
//                           setState(
//                             () {
//                               if (invisibility == false) {
//                                 invisibility = true;
//                               } else {
//                                 invisibility = false;
//                               }
//                             },
//                           );
//                         },
//                         icon: invisibility
//                             ? const Icon(Icons.visibility_off)
//                             : const Icon(Icons.visibility),
//                       ),
//                       fillColor: Colors.white,
//                       filled: true,
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(color: Colors.white),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       hintText: 'Password',
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 8),
//                     child: Row(
//                       children: [
//                         Checkbox(
//                             checkColor: Colors.white,
//                             activeColor: Colors.blue,
//                             value: check,
//                             onChanged: (e) {
//                               setState(() {
//                                 check = e!;
//                               });
//                             }),
//                         Flexible(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 'Saya menerima segala isi Syarat Penggunaan dan ',
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               Text(
//                                 'Kebijakan Privasi',
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.blue,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(double.infinity, 50),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                     ),
//                     onPressed: check == true
//                         ? (() async {
//                             if (fromKey.currentState!.validate()) {
//                               await authProvider.register(
//                                   _nameController.text,
//                                   _emailController.text,
//                                   _phoneController.text,
//                                   _passwordController.text);
//                               // ignore: use_build_context_synchronously
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) {
//                                   return const VerifikasiPage();
//                                 }),
//                               );
//                             }
//                           })
//                         : null,
//                     child: const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Sudah Punya Akun? ',
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pushAndRemoveUntil(
//                               context,
//                               MaterialPageRoute(
//                                 builder: ((context) => const LoginPage()),
//                               ),
//                               (route) => false);
//                         },
//                         child: const Text(
//                           ' Login',
//                           style: TextStyle(
//                               color: Colors.blue,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
