import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/forgetpass.dart';
import '../screens/loadingscreen.dart';
import '../screens/signup.dart';

class MyInputTheme {
  TextStyle _builtTextStyle(Color color) {
    return TextStyle(
      color: color,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Login(),
        ]),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void _login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      if (userCredential.user != null) {
        DocumentSnapshot userDoc = await _firestore.collection('users').doc(userCredential.user!.uid).get();
        String userName = userDoc['name'];

        Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreenScreen()));
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 375,
            height: 812,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF343333),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 98,
                  top: 156,
                  child: SizedBox(
                    width: 180,
                    height: 29,
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 26,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 136,
                  top: 201,
                  child: Container(
                    width: 36,
                    height: 36,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                  ),
                ),
                Positioned(
                  left: 204,
                  top: 201,
                  child: Container(
                    width: 36,
                    height: 36,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                  ),
                ),
                Positioned(
                  left: 126,
                  top: 189,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    iconSize: 40,
                  ),
                ),
                Positioned(
                  left: 194,
                  top: 189,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.tiktok),
                    iconSize: 44,
                  ),
                ),
                Positioned(
                  left: 174,
                  top: 253,
                  child: Text(
                    'Or',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFBBBBBB),
                      fontSize: 24,
                      fontFamily: 'Klarna Text',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 324,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFBBBBBB),
                            fontSize: 14,
                            fontFamily: 'Klarna Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 306,
                          height: 36,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFD9D9D9),
                              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 418,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFBBBBBB),
                            fontSize: 14,
                            fontFamily: 'Klarna Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 306,
                          height: 36,
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFD9D9D9),
                              contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 121,
                  top: 659,
                  child: Container(
                    width: 134,
                    height: 37,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(width: 134, height: 37),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                            },
                            child: Container(
                              width: 134,
                              height: 36,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 134,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFD9D9D9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16.87),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 5.93,
                                    top: 10,
                                    child: SizedBox(
                                      width: 123.33,
                                      child: Text(
                                        'Create Account',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF121212),
                                          fontSize: 14,
                                          fontFamily: 'Klarna Text',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 121,
                  top: 566,
                  child: InkWell(
                    onTap: _login,
                    child: Container(
                      width: 134,
                      height: 36,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 134,
                              height: 36,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 134,
                                      height: 36,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFD9D9D9),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 43,
                                    top: 9.73,
                                    child: SizedBox(
                                      width: 50,
                                      height: 18.49,
                                      child: Text(
                                        'Log in',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF121212),
                                          fontSize: 16,
                                          fontFamily: 'Klarna Text',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 152,
                  top: 634,
                  child: Text(
                    'New here?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFBBBBBB),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 223,
                  top: 486,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotYourPasswordScreen()));
                    },
                    child: SizedBox(
                      width: 118,
                      height: 16,
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFBBBBBB),
                          fontSize: 14,
                          fontFamily: 'Klarna Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
