import 'package:flutter/material.dart';
import '../screens/newpassword.dart';

void main() {
runApp(const ForgotYourPasswordScreen());
}

class ForgotYourPasswordScreen extends StatelessWidget {
const ForgotYourPasswordScreen({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
),
home: Scaffold(
body: ListView(children: [
ForgotYourPassword(),
]),
),
);
}
}

class ForgotYourPassword extends StatelessWidget {
ForgotYourPassword({super.key});

@override
Widget build(BuildContext context) {
return Column(
children: [
Container(
width: 375,
height: 812,
clipBehavior: Clip.antiAlias,
decoration: ShapeDecoration(
color: const Color(0xFF343333),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
),
child: Stack(
children: [
Positioned(
left: 121,
top: 566,
child: ElevatedButton(
onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPasswordScreen()));
},
style: ElevatedButton.styleFrom(
backgroundColor: const Color(0xFFD9D9D9),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(36),
),
padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
),
child: const Text(
'Proceed',
style: TextStyle(
color: Color(0xFF1E1E1E),
fontSize: 16,
fontWeight: FontWeight.w700,
),
),
),
),
Positioned(
left: 48,
top: 206,
child: SizedBox(
width: 280,
height: 68,
child: const Text(
'Insert the verification code sent to you via SMS',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 24,
fontWeight: FontWeight.w400,
),
),
),
),
Positioned(
left: 125,
top: 358,
child: TextButton(
onPressed: () {
// Define what happens when "Resend code" is pressed
},
child: const Text(
'Resend code',
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontWeight: FontWeight.w500,
),
),
),
),
Positioned(
left: 59,
top: 81,
child: const SizedBox(
width: 258,
child: Text(
'Forgot your Password?',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 24,
fontWeight: FontWeight.w500,
),
),
),
),
Positioned(
left: 79,
top: 274,
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: List.generate(4, (index) {
return Padding(
padding: const EdgeInsets.all(8.0),
child: SizedBox(
width: 36,
height: 36,
child: TextFormField(
decoration: InputDecoration(
border: OutlineInputBorder(
borderSide: BorderSide(color: Colors.white),
),
enabledBorder: OutlineInputBorder(
borderSide: BorderSide(color: Colors.white, width: 2),
),
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(color: Colors.white, width: 2),
),
),
textAlign: TextAlign.center,
style: const TextStyle(fontSize: 18, color: Colors.white),
),
),
);
}),
),
),
],
),
),
],
);
}
}
