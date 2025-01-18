import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../screens/lessonpart1.dart';
import '../screens/lessonpart3.dart';
void main() {
  runApp(const LessonP2Screen());
}

class LessonP2Screen extends StatelessWidget {
  const LessonP2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          LessonP2(),
        ]),
      ),
    );
  }
}

class LessonP2 extends StatelessWidget {
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
                left: 85,
                top: 153,
                child: SizedBox(
                  width: 206,
                  height: 57,
                  child: GestureDetector(
                    onTap: () {
                      AudioPlayer().play(AssetSource('jahreszeiten.mp3'));
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Part 2: Seasons\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Klarna Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: '(Die Jahreszeiten)\n',
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
                left: 184,
                top: 242,
                child: Container(
                  width: 8,
                  height: 358,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 49,
                top: 428,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                  child: Container(
                    width: 8,
                    height: 284,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
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
                left: 47,
                top: 449,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 93,
                        height: 27,
                        child: Text(
                          'Autumn',
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
                      const SizedBox(height: 8),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/autumn_ill.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 1,
                              top: 2.61,
                              child: Container(
                                width: 78.03,
                                height: 67.53,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 0.58,
                              top: 0,
                              child: Container(
                                width: 78.88,
                                height: 70.15,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 61.90,
                                      top: 33.42,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 14.70,
                                          height: 35.46,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 46.44,
                                      top: 24.35,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 21.01,
                                          height: 42.36,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 5.15,
                                      top: 21.97,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 14.07,
                                          height: 44.84,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1.36,
                              top: 56.42,
                              child: Container(
                                width: 77.30,
                                height: 23.58,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 31.37,
                                      top: 5.43,
                                      child: Opacity(
                                        opacity: 0.20,
                                        child: Container(
                                          width: 19.30,
                                          height: 8.34,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 35.65,
                                      top: 6.73,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 14.22,
                                          height: 5.22,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 1.63,
                                      top: 4.84,
                                      child: Opacity(
                                        opacity: 0.20,
                                        child: Container(
                                          width: 20.64,
                                          height: 8.92,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 6.21,
                                      top: 6.25,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 15.20,
                                          height: 5.58,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 46.92,
                                      top: 1.59,
                                      child: Opacity(
                                        opacity: 0.20,
                                        child: Container(
                                          width: 28.15,
                                          height: 12.18,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 48.08,
                                      top: 3.51,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 20.74,
                                          height: 7.62,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 2.76,
                              top: 30.27,
                              child: Container(
                                width: 74.50,
                                height: 29.92,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 33.13,
                                      top: 0.99,
                                      child: Opacity(
                                        opacity: 0.30,
                                        child: Container(
                                          width: 2.38,
                                          height: 2.88,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 9.27,
                                      top: 21.75,
                                      child: Opacity(
                                        opacity: 0.30,
                                        child: Container(
                                          width: 3.73,
                                          height: 2.56,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 36.32,
                                      top: 11.89,
                                      child: Opacity(
                                        opacity: 0.30,
                                        child: Container(
                                          width: 2.02,
                                          height: 1.41,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 65.05,
                                      top: 11.46,
                                      child: Opacity(
                                        opacity: 0.30,
                                        child: Container(
                                          width: 2.03,
                                          height: 1.41,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 13.42,
                              top: 32.20,
                              child: Container(
                                width: 28.59,
                                height: 45.91,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 35.65,
                              top: 12.73,
                              child: Container(
                                width: 31.73,
                                height: 65.38,
                                child: Stack(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 94,
                        height: 28,
                        child: GestureDetector(
                          onTap: () {
                            AudioPlayer().play(AssetSource('herbst.mp3'));
                          },
                          child: Text(
                            'Herbst',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 237,
                top: 449,
                child: Container(
                  width: 94,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 93,
                        height: 25,
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: Text(
                            'Winter',
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
                      const SizedBox(height: 8),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/winter_ill.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Opacity(
                                opacity: 0,
                                child: Container(
                                  width: 79.33,
                                  height: 80,
                                  child: Stack(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15.23,
                              top: 4.53,
                              child: Container(
                                width: 61.44,
                                height: 70.87,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 7.44,
                              top: 45.40,
                              child: Container(
                                width: 72.56,
                                height: 32.84,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 29.74,
                              top: 38.35,
                              child: Container(
                                width: 29.51,
                                height: 21.53,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 22.58,
                              top: 41.43,
                              child: Container(
                                width: 51.78,
                                height: 29.75,
                                child: Stack(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 94,
                        height: 28,
                        child: GestureDetector(
                          onTap: () {
                            AudioPlayer().play(AssetSource('winter.mp3'));
                          },
                          child: Text(
                            'Winter',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 49,
                top: 242,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 93,
                        height: 27,
                        child: Text(
                          'Spring',
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
                      const SizedBox(height: 8),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/spring_illustration.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.47,
                              top: 2.16,
                              child: Container(
                                width: 79.03,
                                height: 77.75,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 56.30,
                                      top: 4.15,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 7.48,
                                          height: 12.36,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 63.52,
                                      top: 1.51,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 4.74,
                                          height: 14.41,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 58.43,
                                      top: 4.36,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 8.31,
                                          height: 12.15,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0.38,
                              top: 4.25,
                              child: Container(
                                width: 30.06,
                                height: 75.66,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 45.31,
                              top: 10.23,
                              child: Container(
                                width: 34.69,
                                height: 69.68,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 13.36,
                                      top: 4,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 7.17,
                                          height: 12.61,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 8.66,
                                      top: 1.51,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 4.75,
                                          height: 14.41,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 10.19,
                                      top: 4.37,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 8.31,
                                          height: 12.16,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 21.26,
                                      top: 18.23,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 6.64,
                                          height: 11.14,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 17.90,
                                      top: 20.68,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 6.28,
                                          height: 12.83,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 21.48,
                                      top: 20.47,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 6.76,
                                          height: 13.11,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 14.89,
                                      top: 22.80,
                                      child: Opacity(
                                        opacity: 0.10,
                                        child: Container(
                                          width: 6.93,
                                          height: 10.99,
                                          child: Stack(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 24.72,
                              top: 0,
                              child: Container(
                                width: 28.15,
                                height: 79.91,
                                child: Stack(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 94,
                        height: 28,
                        child: GestureDetector(
                          onTap: () {
                            AudioPlayer().play(AssetSource('fruhling.mp3'));
                          },
                          child: Text(
                            'Frühling',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 239,
                top: 242,
                child: Container(
                  width: 94,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 94,
                        height: 24,
                        child: Text(
                          'Summer',
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
                      const SizedBox(height: 8),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/summer_ill.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.39,
                              top: 7.02,
                              child: Container(
                                width: 79.29,
                                height: 72.98,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 7.18,
                              top: 40.94,
                              child: Container(
                                width: 72.82,
                                height: 6.69,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 27.94,
                              top: 27.34,
                              child: Container(
                                width: 24.14,
                                height: 13.63,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 32.40,
                              child: Container(
                                width: 80,
                                height: 8.64,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 1.21,
                              top: 0,
                              child: Container(
                                width: 78.68,
                                height: 48.89,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 7.11,
                              top: 42.52,
                              child: Container(
                                width: 66.69,
                                height: 29.54,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 36.58,
                              top: 45.87,
                              child: Container(
                                width: 37.47,
                                height: 31.31,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 56.38,
                              top: 37.58,
                              child: Container(
                                width: 4.42,
                                height: 7.19,
                                child: Stack(),
                              ),
                            ),
                            Positioned(
                              left: 22.56,
                              top: 59.41,
                              child: Container(
                                width: 17.84,
                                height: 16.94,
                                child: Stack(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 94,
                        height: 27,
                        child: GestureDetector(
                          onTap: () {
                            AudioPlayer().play(AssetSource('sommer.mp3'));
                          },
                          child: Text(
                            'Sommer',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 693,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LessonP3Screen()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LessonP1Screen()));
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