import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../screens/lessonpart2.dart';
import '../screens/testpart1.dart';

void main() {
runApp(const LessonP3Screen());
}

class LessonP3Screen extends StatelessWidget {
const LessonP3Screen({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
),
home: Scaffold(
body: ListView(children: [
LessonP3(),
]),
),
);
}
}

class LessonP3 extends StatelessWidget {
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
left: 105,
top: 153,
child: SizedBox(
width: 165,
height: 57,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('monate.mp3'));
  },
  child: Text.rich(
  TextSpan(
  children: [
  TextSpan(
  text: 'Part 3: Months\n',
  style: TextStyle(
  color: Colors.white,
  fontSize: 24,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w500,
  height: 0,
  ),
  ),
  TextSpan(
  text: '(Die Monate)\n',
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 24,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
  ],
  ),
  textAlign: TextAlign.center,
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
left: 98,
top: 693,
child: InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TestP1Screen()));
  },
  child: Container(
  width: 180,
  padding: const EdgeInsets.all(8),
  decoration: ShapeDecoration(
  color: Color(0xFF1397EB),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  ),
  child: Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  SizedBox(
  width: 127,
  height: 23,
  child: Text(
  'Take the test',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w500,
  height: 0,
  ),
  ),
  ),
  const SizedBox(width: 8),
  Container(
  width: 24,
  height: 24,
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/arrow_in_lesson_pages.png'),
      fit: BoxFit.fill,
    ),
  ),
  ),
  ],
  ),
  ),
),
),
Positioned(
left: 29,
top: 56,
child: Container(
width: 24,
height: 24,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(),
),
),
  Positioned(
    left: 18,
    top: 46,
    child: IconButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LessonP2Screen()));
      },
      icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,
    ),
  ),
Positioned(
left: 27,
top: 226,
child: SizedBox(
width: 94,
height: 25,
child: GestureDetector(
  onTap: () {
  },
  child: Text(
  'January',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w500,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 50,
top: 251,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-1.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 33.50,
top: 299,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('januar.mp3'));
  },
  child: Text(
  'Januar',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 141,
top: 226,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'February',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 164,
top: 251,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-2.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 147.50,
top: 299,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('februar.mp3'));
  },
  child: Text(
  'Februar',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 255,
top: 226,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'March',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 278,
top: 251,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-3.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 261.50,
top: 299,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('marz.mp3'));
  },
  child: Text(
  'März',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 27,
top: 340,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'April',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 50,
top: 365,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-4.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 33.50,
top: 413,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('april.mp3'));
  },
  child: Text(
  'April',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 141,
top: 340,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'May',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 164,
top: 365,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-5.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 147.50,
top: 413,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('mai.mp3'));
  },
  child: Text(
  'Mai',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 255,
top: 340,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'June',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 278,
top: 365,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-6.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 261.50,
top: 413,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('juni.mp3'));
  },
  child: Text(
  'Juni',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 27,
top: 454,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'July',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 50,
top: 479,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-7.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 33.50,
top: 527,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('juli.mp3'));
  },
  child: Text(
  'Juli',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 141,
top: 454,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'August',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 164,
top: 479,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-8.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 147.50,
top: 527,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('august.mp3'));
  },
  child: Text(
  'August',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 249.50,
top: 454,
child: SizedBox(
width: 105,
height: 25,
child: Text(
'September',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 278,
top: 479,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-9.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 249.50,
top: 527,
child: SizedBox(
width: 105,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('september.mp3'));
  },
  child: Text(
  'September',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 27,
top: 568,
child: SizedBox(
width: 94,
height: 25,
child: Text(
'October',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 50,
top: 593,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-10.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 33.50,
top: 641,
child: SizedBox(
width: 81,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('oktober.mp3'));
  },
  child: Text(
  'Oktober',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 135,
top: 568,
child: SizedBox(
width: 106,
height: 25,
child: GestureDetector(
  onTap: () {
  },
  child: Text(
  'November',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w500,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 164,
top: 593,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-11.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 137,
top: 641,
child: SizedBox(
width: 102,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('november.mp3'));
  },
  child: Text(
  'November',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
  height: 0,
  ),
  ),
),
),
),
Positioned(
left: 250,
top: 568,
child: SizedBox(
width: 104,
height: 25,
child: Text(
'December',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 278,
top: 593,
child: Container(
width: 48,
height: 48,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/arcticons_calendar-12.png'),
    fit: BoxFit.fill,
  ),
),
),
),
Positioned(
left: 249,
top: 641,
child: SizedBox(
width: 106,
height: 25,
child: GestureDetector(
  onTap: () {
    AudioPlayer().play(AssetSource('dezember.mp3'));
  },
  child: Text(
  'Dezember',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Color(0xFF2ED95E),
  fontSize: 20,
  fontFamily: 'Klarna Text',
  fontWeight: FontWeight.w700,
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
);
}
}