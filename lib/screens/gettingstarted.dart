import 'package:flutter/material.dart';
import '../screens/choosinglanguage.dart';
import '../screens/navigationhub.dart';

void main() {
runApp(const GettingStartedScreen());
}

class GettingStartedScreen extends StatelessWidget {
const GettingStartedScreen({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
),
home: Scaffold(
body: ListView(children: [
GettingStarted(),
]),
),
);
}
}

class GettingStarted extends StatelessWidget {
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
left: 16,
top: 63,
child: SizedBox(
width: 343,
height: 67,
child: Text(
'Embark on your quest \nfor knowledge',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFFBBBBBB),
fontSize: 28,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
  Positioned(
    left: 36,
    top: 190,
    child: Container(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosingLanguageScreen()));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your first language to learn',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBBBBBB),
                fontSize: 16,
                fontFamily: 'Klarna Text',
                fontWeight: FontWeight.w500,
                height: 0.5, // Adjusted for better line height
              ),
            ),
            SizedBox(height: 8), // Added spacing between text and input
            Container(
              width: 306,
              height: 37,
              decoration: ShapeDecoration(
                color: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
Positioned(
left: 76,
top: 494,
child: SizedBox(
width: 223,
child: Text(
'Learning Frequency',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFFBBBBBB),
fontSize: 20,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
),
),
Positioned(
left: 117,
top: 686,
child: InkWell(
onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => NavHub(initialIndex: 0,)));
},
child: Container(
width: 141,
height: 36,
clipBehavior: Clip.antiAlias,
decoration: ShapeDecoration(
color: Color(0xFFD9D9D9),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
),
child: Center(
child: Text(
'Let’s go!',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFF121212),
fontSize: 18,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w700,
height: 0,
),
),
),
),
),
),
Positioned(
left: 91,
top: 553,
child: Container(
width: 80,
height: 80,
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
),
child: Stack(
children: [
Positioned(
left: 0.78,
top: 0,
child: InkWell(
  onTap: () {},

  child: Container(
  width: 78.43,
  height: 80,
  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
  ),
),
),
Positioned(
left: 0,
top: 20.80,
child: SizedBox(
width: 80,
child: Text(
'At your own pace',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFF121212),
fontSize: 16,
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
Positioned(
left: 203,
top: 553,
child: InkWell(
  onTap: () {},

  child: Container(
  width: 80,
  height: 80,
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
  child: Stack(
  children: [
  Positioned(
  left: 0,
  top: 21,
  child: SizedBox(
  width: 80,
  child: Text(
  'Set a timetable',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.black,
  fontSize: 16,
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
left: 34,
top: 314,
child: Container(
child: Column(
mainAxisSize: MainAxisSize.min,
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'What are you studying for?',
textAlign: TextAlign.center,
style: TextStyle(
color: Color(0xFFBBBBBB),
fontSize: 16,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
height: 0,
),
),
StudyForDropdown(), // Replace the container with this widget
SizedBox(
width: 287,
child: Text(
'This will help the algorithm in choosing certain words to focus on.',
style: TextStyle(
color: Color(0xFFBBBBBB),
fontSize: 12,
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
],
),
),
],
);
}
}

class StudyForDropdown extends StatefulWidget {
@override
_StudyForDropdownState createState() => _StudyForDropdownState();
}

class _StudyForDropdownState extends State<StudyForDropdown> {
String? selectedReason;
final List<String> studyReasons = [
'Education',
'Travel',
'Work',
'Entertainment',
'Socializing',
'Cultural Enrichment/Just for fun',
];

@override
Widget build(BuildContext context) {
return Container(
width: 310,
height: 37,
padding: EdgeInsets.symmetric(horizontal: 12),
decoration: ShapeDecoration(
color: Color(0xFFD9D9D9),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5),
),
),
child: DropdownButtonHideUnderline(
child: DropdownButton<String>(
value: selectedReason,
hint: Text(
'Select reason',
style: TextStyle(
color: Color(0xFF121212),
fontSize: 16,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
),
),
isExpanded: true,
icon: Icon(Icons.arrow_drop_down, color: Colors.black),
onChanged: (String? newValue) {
setState(() {
selectedReason = newValue;
});
},
items: studyReasons.map<DropdownMenuItem<String>>((String value) {
return DropdownMenuItem<String>(
value: value,
child: Text(
value,
style: TextStyle(
color: Color(0xFF121212),
fontSize: 16,
fontFamily: 'Klarna Text',
fontWeight: FontWeight.w500,
),
),
);
}).toList(),
),
),
);
}
}
