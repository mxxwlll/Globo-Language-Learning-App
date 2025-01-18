import 'package:flutter/material.dart';
import '../screens/settings.dart';
import '../screens/navigationhub.dart';

void main() {
runApp(const EditProfileScreen());
}

class EditProfileScreen extends StatelessWidget {
const EditProfileScreen({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
),
home: Scaffold(
body: ListView(children: [
EditProfile(),
]),
),
);
}
}

class EditProfile extends StatelessWidget {
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
left: 0,
top: 0,
child: Container(
width: 375,
height: 160,
decoration: BoxDecoration(
color: Color(0x33343333),
boxShadow: [
BoxShadow(
color: Color(0x3F000000),
blurRadius: 4,
offset: Offset(0, 13),
spreadRadius: 0,
)
],
),
),
),
Positioned(
left: 16,
top: 192,
child: SizedBox(
width: 57,
height: 22,
child: Text(
'Email:',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
),
Positioned(
left: 89,
top: 195.50,
child: SizedBox(
width: 125,
height: 15,
child: Text(
'Sage41@gmail.com',
style: TextStyle(
color: Colors.white.withOpacity(0.800000011920929),
fontSize: 14,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 16,
top: 331,
child: SizedBox(
width: 61,
height: 20,
child: Text(
'D.O.B:',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
),
Positioned(
left: 93,
top: 335,
child: SizedBox(
width: 79,
height: 12,
child: Text(
'Apr 26 2001',
style: TextStyle(
color: Colors.white.withOpacity(0.800000011920929),
fontSize: 14,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 16,
top: 238,
child: Container(
child: Row(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
SizedBox(
width: 111,
height: 23,
child: Text(
'Nationality:',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
const SizedBox(width: 8),
SizedBox(
width: 92,
height: 12,
child: Text(
'United States',
style: TextStyle(
color: Colors.white.withOpacity(0.800000011920929),
fontSize: 14,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
],
),
),
),
Positioned(
left: 235,
top: 238,
child: Container(
width: 36,
height: 24,
decoration: ShapeDecoration(
image: DecorationImage(
image: AssetImage('assets/United_States_of_America.png'),
fit: BoxFit.fill,
),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
),
),
),
Positioned(
left: 109,
top: 600,
child: InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => NavHub(initialIndex: 3)));
  },
  child: Container(
  width: 159,
  height: 37,
  decoration: ShapeDecoration(
  color: Color(0xFFD9D9D9),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(36),
  ),
  ),
  child: Stack(
  children: [
  Positioned(
  left: 14.50,
  top: 9,
  child: Text(
  'Confirm Changes',
  style: TextStyle(
  color: Color(0xFF121212),
  fontSize: 16,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
  ),
  ],
  ),
  ),
),
),
Positioned(
left: 86,
top: 423,
child: SizedBox(
width: 204,
height: 17,
child: Text(
'Want to find more friends?',
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
),
Positioned(
left: 108,
top: 469,
child: Container(
width: 159,
height: 40,
child: Stack(
children: [
Positioned(
left: 0,
top: 0,
child: InkWell(
  onTap: () {},

  child: Container(
  padding: const EdgeInsets.all(8),
  decoration: ShapeDecoration(
  color: Color(0xFF4E87F8),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  ),
  ),
  child: Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  Container(
  width: 24,
  height: 24,
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/typcn_contacts.png'),
      fit: BoxFit.fill,
    ),
  ),
  ),
  const SizedBox(width: 8),
  SizedBox(
  width: 111,
  height: 19,
  child: Text(
  'Sync Contacts',
  style: TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
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
left: 16,
top: 64,
child: Container(
width: 78.40,
height: 80,
clipBehavior: Clip.antiAlias,
decoration: ShapeDecoration(
image: DecorationImage(
image: AssetImage('assets/man2.png'),
fit: BoxFit.fill,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(40),
),
),
),
),
Positioned(
left: 112.40,
top: 71,
child: SizedBox(
width: 136.22,
height: 33,
child: Text(
'Nolan Press',
style: TextStyle(
color: Colors.white,
fontSize: 24,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
),
Positioned(
left: 112,
top: 104,
child: SizedBox(
width: 101,
height: 28,
child: Text(
'Learning: German\nCurrent level: A1.1',
style: TextStyle(
color: Colors.white.withOpacity(0.800000011920929),
fontSize: 12,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),

Positioned(
left: 75,
top: 60,
child: Container(
width: 24,
height: 24,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(),
),
),
  Positioned(
    left: 65,
    top: 50,
    child: IconButton(
      onPressed: () {},
      icon: Icon(Icons.mode_edit),
      iconSize: 24,
      color: Colors.purpleAccent,
    ),
  ),
Positioned(
left: 16,
top: 286.50,
child: SizedBox(
width: 191,
height: 20,
child: Text(
'Cause of Education:',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
),
Positioned(
left: 215,
top: 286,
child: Container(
width: 127,
height: 21,
child: Stack(
children: [
Positioned(
left: 0,
top: 0,
child: Container(
width: 127,
height: 21,
decoration: ShapeDecoration(
color: Color(0xFFD9D9D9),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
),
),
),
Positioned(
left: 111.43,
top: 1.70,
child: Container(
width: 13.11,
height: 18.16,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(),
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