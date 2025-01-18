import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/gettingstarted.dart';
import '../screens/onboarding.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: false,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData().copyWith(
            scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
          ),
          home: Scaffold(
            body: ListView(
              children: [
                Signup(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  bool _agreeToTnC = false;
  bool _getEmailUpdates = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _signup() async {
    if (_agreeToTnC) {
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        if (userCredential.user != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => GettingStartedScreen()));
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("You must agree to the terms and conditions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 375.w,
        height: 812.h,
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
              left: 88,
              top: 77,
              child: Text(
                'Let’s get started',
                style: TextStyle(
                  color: Color(0xFFBBBBBB),
                  fontSize: 26.sp,
                  fontFamily: 'Klarna Text',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 174,
              top: 174,
              child: Text(
                'Or',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFBBBBBB),
                  fontSize: 24.sp,
                  fontFamily: 'Klarna Text',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 35.r,
              top: 219.r,
              child: Container(
                width: 306.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 14.sp,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFD9D9D9),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 35.r,
              top: 308.r,
              child: Container(
                width: 306.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 14.sp,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFD9D9D9),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 35.r,
              top: 397.r,
              child: Container(
                width: 306.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 14.sp,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFD9D9D9),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 35.r,
              top: 486.r,
              child: Container(
                width: 306.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'D.O.B',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 14.sp,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: _dobController,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFD9D9D9),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 35.r,
              top: 575.r,
              child: Container(
                width: 306.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nationality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 14.sp,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      controller: _nationalityController,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFD9D9D9),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 117.r,
              top: 748.r,
              child: ElevatedButton(
                onPressed: _signup,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF121212),
                      fontSize: 16.sp,
                      fontFamily: 'Klarna Text',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 35.r,
              top: 660.r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _agreeToTnC,
                        onChanged: (bool? value) {
                          setState(() {
                            _agreeToTnC = value!;
                          });
                        },
                      ),
                      Text(
                        'Agree to T&C',
                        style: TextStyle(
                          color: Color(0xFFBBBBBB),
                          fontSize: 14.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _getEmailUpdates,
                        onChanged: (bool? value) {
                          setState(() {
                            _getEmailUpdates = value!;
                          });
                        },
                      ),
                      Text(
                        'Get updates to your e-mail',
                        style: TextStyle(
                          color: Color(0xFFBBBBBB),
                          fontSize: 14.sp,
                          fontFamily: 'Klarna Text',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 126,
              top: 115,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.facebook),
                iconSize: 40,
              ),
            ),
            Positioned(
              left: 194,
              top: 115,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.tiktok),
                iconSize: 44,
              ),
            ),
            Positioned(
              left: 18.r,
              top: 46.r,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
