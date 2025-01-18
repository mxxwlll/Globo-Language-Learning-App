import 'package:flutter/material.dart';
import '../screens/login.dart';

void main() {
runApp(const CreateNewPasswordScreen());
}

class CreateNewPasswordScreen extends StatelessWidget {
const CreateNewPasswordScreen({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
),
home: Scaffold(
body: ListView(
children: [
CreateNewPassword(),
],
),
),
);
}
}

class CreateNewPassword extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Column(
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
left: 121,
top: 566,
child: InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  },
  child: Container(
  width: 134,
  height: 36,
  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
  decoration: ShapeDecoration(
  color: Color(0xFFD9D9D9),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(36),
  ),
  ),
  child: Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  Text(
  'Confirm',
  style: TextStyle(
  color: Color(0xFF1E1E1E),
  fontSize: 16,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
  ],
  ),
  ),
),
),
Positioned(
left: 16,
top: 105,
child: SizedBox(
width: 343,
child: Text(
'Create New Password',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 24,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 32,
top: 230,
child: Container(
child: Column(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Insert your new password',
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
const SizedBox(height: 8),
Container(
width: 311,
height: 36,
child: TextFormField(
obscureText: true,
decoration: InputDecoration(
fillColor: Color(0xFFD9D9D9),
filled: true,
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
left: 32,
top: 357,
child: Container(
child: Column(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Confirm your new password',
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
const SizedBox(height: 8),
Container(
width: 311,
height: 36,
child: TextFormField(
obscureText: true,
decoration: InputDecoration(
fillColor: Color(0xFFD9D9D9),
filled: true,
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
],
),
),
],
);
}
}
