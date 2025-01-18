import 'package:flutter/material.dart';
import '../screens/lessonpart1.dart';
import '../screens/navigationhub.dart';

void main() {
  runApp(const HomePageScreen());
}

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          HomepageGerman(),
        ]),
      ),
    );
  }
}

class HomepageGerman extends StatelessWidget {
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
                  left: 27,
                  top: 58,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 59.44,
                          height: 59.44,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Germany.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 3,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFF1397EB),
                              ),
                              borderRadius: BorderRadius.circular(11.89),
                            ),
                          ),
                        ),
                        Text(
                          'German',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFAFAFF),
                            fontSize: 12,
                            fontFamily: 'Klarna Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 58,
                  child: Container(
                    width: 60.14,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.14,
                          height: 60.14,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Italy.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.03),
                            ),
                          ),
                        ),
                        Text(
                          'Italian',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFAFAFF),
                            fontSize: 12,
                            fontFamily: 'Klarna Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 194.58,
                  top: 54,
                  child: Container(
                    height: 90,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                        ),
                        SizedBox(
                          width: 65,
                          height: 42,
                          child: Text(
                            'Add Another Language',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFAFAFF),
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
                Positioned(
                  left: 199,
                  top: 50,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline_rounded),
                    color: Colors.purple,
                    iconSize: 40,
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 195,
                  child: SizedBox(
                    width: 217,
                    height: 34,
                    child: Text(
                      'Willkommen!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFAFAFF),
                        fontSize: 36,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 255,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LessonP1Screen()));
                    },
                    child: Container(
                      width: 327,
                      height: 126,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: 198,
                              height: 23,
                              child: Text(
                                'Resume your journey',
                                style: TextStyle(
                                  color: Color(0xFFFAFAFF),
                                  fontSize: 20,
                                  fontFamily: 'Klarna Text',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 28,
                            child: Container(
                              width: 327,
                              height: 98,
                              decoration: ShapeDecoration(
                                color: Color(0xFF15699E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 182,
                            top: 36,
                            child: SizedBox(
                              width: 145,
                              height: 15,
                              child: Text(
                                'Current level: A1.1',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.800000011920929),
                                  fontSize: 16,
                                  fontFamily: 'Klarna Text',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            top: 60,
                            child: SizedBox(
                              width: 135,
                              height: 35,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Next Lesson:\n',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.800000011920929),
                                        fontSize: 12,
                                        fontFamily: 'Klarna Text',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Times of the year.',
                                      style: TextStyle(
                                        color: Color(0xFFFAFAFF),
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
                            left: 231,
                            top: 51,
                            child: Container(
                              width: 78.73,
                              height: 73.47,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/resume_your_journey_illustration.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 5.26,
                                    top: 8,
                                    child: Container(
                                      width: 73.46,
                                      height: 50.39,
                                      child: Stack(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 78.16,
                                      height: 59.81,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 46.38,
                                            top: 9.42,
                                            child: Opacity(
                                              opacity: 0.70,
                                              child: Container(
                                                width: 7.68,
                                                height: 11.50,
                                                child: Stack(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20.38,
                                    top: 28.22,
                                    child: Container(
                                      width: 49.04,
                                      height: 44.78,
                                      child: Stack(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 45.76,
                                    top: 59.80,
                                    child: Container(
                                      width: 32.51,
                                      height: 13.68,
                                      child: Stack(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 7.60,
                                    top: 60.34,
                                    child: Container(
                                      width: 19.17,
                                      height: 12.98,
                                      child: Stack(),
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
                  left: 24,
                  top: 576,
                  child: Container(
                    width: 327,
                    height: 126,
                    decoration: ShapeDecoration(
                      color: Color(0xFF15699E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 27,
                  top: 549,
                  child: SizedBox(
                    width: 156,
                    height: 24,
                    child: Text(
                      'Slang of the day!',
                      style: TextStyle(
                        color: Color(0xFFFAFAFF),
                        fontSize: 20,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 656,
                  child: Text(
                    'Actual Meaning: You are getting on my nerves.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Klarna Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 397,
                  child: Container(
                    width: 327,
                    height: 129,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 155,
                            height: 128,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 155,
                                    height: 128,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF15699E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 7,
                                  child: SizedBox(
                                    width: 85,
                                    height: 19,
                                    child: Text(
                                      'Leaderboard',
                                      style: TextStyle(
                                        color: Color(0xFFFAFAFF),
                                        fontSize: 14,
                                        fontFamily: 'Klarna Text',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 13.99,
                                  top: 26,
                                  child: Container(
                                    width: 128.01,
                                    height: 87.27,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 76.98,
                                          top: 0.32,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 76.18,
                                              decoration: BoxDecoration(color: Color(0xFFDEDEF2)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 111.42,
                                          top: 3.89,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 110.65,
                                              decoration: BoxDecoration(color: Color(0xFFCFCFEB)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 71.21,
                                          top: 7.15,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 70.48,
                                              decoration: BoxDecoration(color: Color(0xFFBABAE3)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 88.66,
                                          top: 10.65,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 87.95,
                                              decoration: BoxDecoration(color: Color(0xFFA1A2D9)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 74.03,
                                          top: 14.01,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 73.36,
                                              decoration: BoxDecoration(color: Color(0xFFA8A8DC)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 71.43,
                                          top: 17.43,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 70.78,
                                              decoration: BoxDecoration(color: Color(0xFF9C9CD7)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 109.06,
                                          top: 21.01,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 108.45,
                                              decoration: BoxDecoration(color: Color(0xFF9B9CD7)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 110.08,
                                          top: 24.44,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 109.50,
                                              decoration: BoxDecoration(color: Color(0xFFBCBCE4)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 79.15,
                                          top: 27.74,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 78.60,
                                              decoration: BoxDecoration(color: Color(0xFFB2B3E0)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 100.64,
                                          top: 31.26,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 100.12,
                                              decoration: BoxDecoration(color: Color(0xFF9595D4)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 128.01,
                                          top: 34.80,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 127.52,
                                              decoration: BoxDecoration(color: Color(0xFFDDDDF1)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 95.89,
                                          top: 38.09,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 95.44,
                                              decoration: BoxDecoration(color: Color(0xFF9A9BD6)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 88.80,
                                          top: 41.49,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 88.38,
                                              decoration: BoxDecoration(color: Color(0xFF9393D3)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 109.94,
                                          top: 45.01,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 109.55,
                                              decoration: BoxDecoration(color: Color(0xFFCACAEA)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 62.63,
                                          top: 48.24,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 62.27,
                                              decoration: BoxDecoration(color: Color(0xFFCCCCEA)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 80.68,
                                          top: 51.74,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 80.35,
                                              decoration: BoxDecoration(color: Color(0xFFA7A7DB)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 89.82,
                                          top: 55.20,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 89.52,
                                              decoration: BoxDecoration(color: Color(0xFFC0C0E5)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 94.89,
                                          top: 58.65,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 94.62,
                                              decoration: BoxDecoration(color: Color(0xFF9797D5)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 87.91,
                                          top: 62.05,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 87.68,
                                              decoration: BoxDecoration(color: Color(0xFFD7D7EF)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 114.16,
                                          top: 65.59,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 113.96,
                                              decoration: BoxDecoration(color: Color(0xFFAAAADC)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 78.38,
                                          top: 68.86,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 78.22,
                                              decoration: BoxDecoration(color: Color(0xFF9F9FD8)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 79.93,
                                          top: 72.30,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 79.80,
                                              decoration: BoxDecoration(color: Color(0xFFCFCFEC)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 43.76,
                                          top: 75.57,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 43.66,
                                              decoration: BoxDecoration(color: Color(0xFFBDBEE4)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 68.11,
                                          top: 79.10,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 68.03,
                                              decoration: BoxDecoration(color: Color(0xFF7273C6)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 98.55,
                                          top: 82.66,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 98.51,
                                              decoration: BoxDecoration(color: Color(0xFFC3C4E7)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 74.49,
                                          top: 85.98,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.58),
                                            child: Container(
                                              width: 1.29,
                                              height: 74.47,
                                              decoration: BoxDecoration(color: Color(0xFF5758BB)),
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
                        Positioned(
                          left: 171,
                          top: 1,
                          child: Container(
                            width: 156,
                            height: 128,
                            decoration: ShapeDecoration(
                              color: Color(0xFF15699E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 204,
                  top: 407,
                  child: SizedBox(
                    width: 137,
                    height: 15,
                    child: Text(
                      'New Video Releases!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 212,
                  top: 504,
                  child: SizedBox(
                    width: 122,
                    height: 12,
                    child: Text(
                      'Check them out now!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 237,
                  top: 423,
                  child: Container(
                    width: 72,
                    height: 78.19,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/new-video-release-illustration.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 1.86,
                          top: 0,
                          child: Container(
                            width: 70.04,
                            height: 72,
                            child: Stack(),
                          ),
                        ),
                        Positioned(
                          left: 55.37,
                          top: 39.88,
                          child: Container(
                            width: 16.41,
                            height: 32.08,
                            child: Stack(),
                          ),
                        ),
                        Positioned(
                          left: 19.67,
                          top: 10.35,
                          child: Container(
                            width: 32.74,
                            height: 61.66,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 7.17,
                                  top: 2.74,
                                  child: Container(
                                    width: 1.05,
                                    height: 0.71,
                                    child: Stack(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 15.52,
                          child: Container(
                            width: 44.75,
                            height: 60.78,
                            child: Stack(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: -295,
                  top: 1147,
                  child: Container(
                    width: 644,
                    height: 204,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 113,
                          child: Container(
                            width: 644,
                            height: 91,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 46,
                          top: 135,
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                                const SizedBox(width: 120),
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                                const SizedBox(width: 120),
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                                const SizedBox(width: 120),
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: -473,
                  top: 1387,
                  child: Container(
                    width: 644,
                    height: 204,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 113,
                          child: Container(
                            width: 644,
                            height: 91,
                            decoration: ShapeDecoration(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 46,
                          top: 135,
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                                const SizedBox(width: 120),
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                                const SizedBox(width: 120),
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                                const SizedBox(width: 120),
                                Container(
                                  width: 48,
                                  height: 48,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 585,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 224,
                          height: 23,
                          child: Text(
                            'Auf den Keks gehen',
                            style: TextStyle(
                              color: Color(0xFFFAFAFA),
                              fontSize: 24,
                              fontFamily: 'Klarna Text',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: 316,
                          height: 32,
                          child: Text(
                            'Literal Translation: You are getting on my biscuit.\n\n',
                            style: TextStyle(
                              color: Colors.white,
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
                  left: 244,
                  top: 682,
                  child: Container(
                    width: 97,
                    height: 20,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 69,
                          height: 13,
                          child: Text(
                            'Randomize',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Klarna Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Container(
                          width: 26,
                          height: 26,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/fad_random-2dice.png'),
                              fit: BoxFit.fill,
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
      ),
    );
  }
}