import 'package:flutter/material.dart';
import '../screens/testpart2.dart';

void main() {
runApp(const TestP1Screen());
}

class TestP1Screen extends StatelessWidget {
const TestP1Screen({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
),
home: Scaffold(
body: ListView(children: [
TestP1(),
]),
),
);
}
}

class TestP1 extends StatelessWidget {
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
left: 31,
top: 216,
child: SizedBox(
width: 313,
height: 29,
child: Text(
'How do you say “Autumn”?',
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
left: 124,
top: 253,
child: Container(
width: 128,
height: 128,
child: Stack(
children: [
Positioned(
left: 1.60,
top: 4.17,
child: Container(
  width: 128,
  height: 128,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/autumn_ill.png'),
      fit: BoxFit.fill,
    ),
  ),
child: Stack(),
),
),
Positioned(
left: 0.93,
top: 0,
child: Container(
width: 126.20,
height: 112.24,
child: Stack(
children: [
Positioned(
left: 99.03,
top: 53.48,
child: Opacity(
opacity: 0.10,
child: Container(
width: 23.51,
height: 56.74,
child: Stack(),
),
),
),
Positioned(
left: 74.30,
top: 38.95,
child: Opacity(
opacity: 0.10,
child: Container(
width: 33.61,
height: 67.77,
child: Stack(),
),
),
),
Positioned(
left: 8.24,
top: 35.15,
child: Opacity(
opacity: 0.10,
child: Container(
width: 22.51,
height: 71.74,
child: Stack(),
),
),
),
],
),
),
),
Positioned(
left: 2.18,
top: 90.27,
child: Container(
width: 123.67,
height: 37.73,
child: Stack(
children: [
Positioned(
left: 50.19,
top: 8.69,
child: Opacity(
opacity: 0.20,
child: Container(
width: 30.87,
height: 13.34,
child: Stack(),
),
),
),
Positioned(
left: 57.04,
top: 10.78,
child: Opacity(
opacity: 0.10,
child: Container(
width: 22.75,
height: 8.35,
child: Stack(),
),
),
),
Positioned(
left: 2.61,
top: 7.75,
child: Opacity(
opacity: 0.20,
child: Container(
width: 33.02,
height: 14.28,
child: Stack(),
),
),
),
Positioned(
left: 9.94,
top: 10,
child: Opacity(
opacity: 0.10,
child: Container(
width: 24.32,
height: 8.93,
child: Stack(),
),
),
),
Positioned(
left: 75.08,
top: 2.55,
child: Opacity(
opacity: 0.20,
child: Container(
width: 45.04,
height: 19.49,
child: Stack(),
),
),
),
Positioned(
left: 76.93,
top: 5.61,
child: Opacity(
opacity: 0.10,
child: Container(
width: 33.18,
height: 12.19,
child: Stack(),
),
),
),
],
),
),
),
Positioned(
left: 4.41,
top: 48.42,
child: Container(
width: 119.20,
height: 47.88,
child: Stack(
children: [
Positioned(
left: 53,
top: 1.59,
child: Opacity(
opacity: 0.30,
child: Container(
width: 3.80,
height: 4.60,
child: Stack(),
),
),
),
Positioned(
left: 14.83,
top: 34.80,
child: Opacity(
opacity: 0.30,
child: Container(
width: 5.97,
height: 4.10,
child: Stack(),
),
),
),
Positioned(
left: 58.12,
top: 19.03,
child: Opacity(
opacity: 0.30,
child: Container(
width: 3.23,
height: 2.25,
child: Stack(),
),
),
),
Positioned(
left: 104.08,
top: 18.33,
child: Opacity(
opacity: 0.30,
child: Container(
width: 3.25,
height: 2.25,
child: Stack(),
),
),
),
],
),
),
),
Positioned(
left: 21.46,
top: 51.53,
child: Container(
width: 45.74,
height: 73.45,
child: Stack(),
),
),
Positioned(
left: 57.04,
top: 20.37,
child: Container(
width: 50.77,
height: 104.61,
child: Stack(),
),
),
],
),
),
),
Positioned(
left: 33,
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
  left: 7,
  top: 8,
  child: SizedBox(
  width: 109,
  height: 29,
  child: Text(
  'Juni',
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
  'Montag',
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
  'Sommer',
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
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TestP2Screen()));

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
  left: 8,
  top: 8,
  child: SizedBox(
  width: 107,
  height: 29,
  child: Text(
  'Herbst',
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