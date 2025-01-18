import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:globotest/screens/navigationhub.dart';
import '../screens/lessonpart2.dart';
import '../screens/homepage.dart';

void main() {
  runApp(const LessonP1Screen());
}

class LessonP1Screen extends StatelessWidget {
  const LessonP1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          LessonP1(),
        ]),
      ),
    );
  }
}

class LessonP1 extends StatelessWidget {
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
                left: 88,
                top: 153,
                child: SizedBox(
                  width: 200,
                  height: 57,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Wochentage.ogg'));
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Part 1: Weekdays\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Klarna Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: '(Die Wochentage)\n',
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
                left: 48,
                top: 226,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/England.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 248,
                top: 226,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Germany.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 322,
                child: SizedBox(
                  width: 85,
                  height: 29,
                  child: Text(
                    'Sunday',
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
                left: 240,
                top: 322,
                child: SizedBox(
                  width: 97,
                  height: 28,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Sonntag.ogg'));
                    },
                    child: Text(
                      'Sonntag',
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
              ),
              Positioned(
                left: 42,
                top: 367,
                child: SizedBox(
                  width: 91,
                  height: 29,
                  child: Text(
                    'Monday',
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
                left: 243,
                top: 366,
                child: SizedBox(
                  width: 90,
                  height: 28,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Montag.ogg'));
                    },
                    child: Text(
                      'Montag',
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
              ),
              Positioned(
                left: 41,
                top: 412,
                child: SizedBox(
                  width: 94,
                  height: 29,
                  child: Text(
                    'Tuesday',
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
                left: 237,
                top: 410,
                child: SizedBox(
                  width: 102,
                  height: 28,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Dienstag.ogg'));
                    },
                    child: Text(
                      'Dienstag',
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
              ),
              Positioned(
                left: 22,
                top: 457,
                child: SizedBox(
                  width: 131,
                  height: 29,
                  child: Text(
                    'Wednesday',
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
                left: 233,
                top: 454,
                child: SizedBox(
                  width: 110,
                  height: 24,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Mittwoch.oga'));
                    },
                    child: Text(
                      'Mittwoch',
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
              ),
              Positioned(
                left: 35,
                top: 502,
                child: SizedBox(
                  width: 106,
                  height: 29,
                  child: Text(
                    'Thursday',
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
                left: 220,
                top: 494,
                child: SizedBox(
                  width: 136,
                  height: 28,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Donnerstag.ogg'));
                    },
                    child: Text(
                      'Donnerstag',
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
              ),
              Positioned(
                left: 52,
                top: 547,
                child: SizedBox(
                  width: 72,
                  height: 29,
                  child: Text(
                    'Friday',
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
                left: 246,
                top: 538,
                child: SizedBox(
                  width: 85,
                  height: 28,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Freitag.ogg'));
                    },
                    child: Text(
                      'Freitag',
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
              ),
              Positioned(
                left: 36,
                top: 592,
                child: SizedBox(
                  width: 103,
                  height: 29,
                  child: Text(
                    'Saturday',
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
                left: 237,
                top: 582,
                child: SizedBox(
                  width: 103,
                  height: 28,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('Samstag.oga'));
                    },
                    child: Text(
                      'Samstag',
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
              ),
              Positioned(
                left: 184,
                top: 226,
                child: Container(
                  width: 8,
                  height: 395,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 693,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LessonP2Screen()));
                  },
                  child: Container(
                    width: 343,
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
                          width: 286,
                          height: 23,
                          child: Text(
                            'Continue to the next part',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavHub(initialIndex: 0,)));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}