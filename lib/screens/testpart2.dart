import 'package:flutter/material.dart';
import '../screens/lessoncompletion.dart';

void main() {
runApp(const TestP2Screen());
}

class TestP2Screen extends StatelessWidget {
const TestP2Screen({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
),
home: Scaffold(
body: ListView(children: [
TestP2(),
]),
),
);
}
}

class TestP2 extends StatelessWidget {
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
left: 156,
top: 36,
child: Container(
width: 64,
height: 64,
decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage('assets/calender.png'),
fit: BoxFit.fill,
),
),
),
),
Positioned(
left: 21,
top: 153,
child: SizedBox(
width: 334,
height: 23,
child: Text(
'Time to test what we learned',
textAlign: TextAlign.center,
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
left: 116,
top: 100,
child: SizedBox(
width: 144,
height: 37,
child: Text(
'Times of the year\n(Zeiten des Jahres)',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 13,
top: 216,
child: SizedBox(
width: 350,
height: 29,
child: Text(
'How do you say “Wednesday”?',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFF2ED95E),
fontSize: 24,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
),
Positioned(
left: 33,
top: 429,
child: InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LessonCompletionScreen()));
  },
  child: Container(
  width: 123,
  height: 45,
  decoration: ShapeDecoration(
  color: Color(0xFF814696),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  ),
  child: Stack(
  children: [
  Positioned(
  left: 7,
  top: 8,
  child: SizedBox(
  width: 109,
  height: 29,
  child: Text(
  'Mittwoch',
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
  ],
  ),
  ),
),
),
Positioned(
left: 220,
top: 429,
child: InkWell(
  onTap: () {},

  child: Container(
  width: 123,
  height: 45,
  decoration: ShapeDecoration(
  color: Color(0xFF814696),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  ),
  child: Stack(
  children: [
  Positioned(
  left: 18,
  top: 8,
  child: SizedBox(
  width: 87,
  height: 29,
  child: Text(
  'Juli',
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
  ],
  ),
  ),
),
),
Positioned(
left: 33,
top: 522,
child: InkWell(
  onTap: () {},

  child: Container(
  width: 123,
  height: 45,
  decoration: ShapeDecoration(
  color: Color(0xFF814696),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  ),
  child: Stack(
  children: [
  Positioned(
  left: 8,
  top: 8,
  child: SizedBox(
  width: 107,
  height: 29,
  child: Text(
  'Freitag',
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
  ],
  ),
  ),
),
),
Positioned(
left: 220,
top: 522,
child: InkWell(
  onTap: () {},

  child: Container(
  width: 123,
  height: 45,
  decoration: ShapeDecoration(
  color: Color(0xFF814696),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  ),
  child: Stack(
  children: [
  Positioned(
  left: 8,
  top: 8,
  child: SizedBox(
  width: 107,
  height: 29,
  child: Text(
  'Frühling',
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
  ],
  ),
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