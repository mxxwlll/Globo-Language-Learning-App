import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Videos(),
        ]),
      ),
    );
  }
}

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.45,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF343333),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.03),
              ),
            ),
            child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.07,
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
                    left: screenWidth * 0.04,
                    top: screenHeight * 0.22,
                    child: Container(
                      width: screenWidth * 0.27,
                      height: screenHeight * 0.06,
                      decoration: ShapeDecoration(
                        color: Color(0xFF15699E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.02),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.36,
                    top: screenHeight * 0.22,
                    child: Container(
                      width: screenWidth * 0.27,
                      height: screenHeight * 0.06,
                      decoration: ShapeDecoration(
                        color: Color(0xFF15699E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.02),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.68,
                    top: screenHeight * 0.22,
                    child: Container(
                      width: screenWidth * 0.27,
                      height: screenHeight * 0.06,
                      decoration: ShapeDecoration(
                        color: Color(0xFF15699E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.02),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.43,
                    top: screenHeight * 0.225,
                    child: Container(
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/man3.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.065),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.75,
                    top: screenHeight * 0.225,
                    child: Container(
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/man7.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.065),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.41,
                    top: screenHeight * 0.26,
                    child: SizedBox(
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.03,
                      child: Text(
                        'Was ist Das?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight * 0.015,
                          fontFamily: 'Klarna Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.76,
                    top: screenHeight * 0.26,
                    child: SizedBox(
                      width: screenWidth * 0.08,
                      height: screenHeight * 0.03,
                      child: Text(
                        'Danke',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight * 0.015,
                          fontFamily: 'Klarna Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.11,
                    top: screenHeight * 0.225,
                    child: Container(
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/man6.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.065),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.08,
                    top: screenHeight * 0.26,
                    child: SizedBox(
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.03,
                      child: Text(
                        'Hallo, Freund',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight * 0.015,
                          fontFamily: 'Klarna Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: screenWidth * 0.04,
                      top: screenHeight * 0.15,
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.06,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: screenWidth,
                                height: screenHeight * 0.06,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/vienna_ad_videos.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        screenWidth * 0.025),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  )
                ]
            ),
          )
        ]
    );
  }
  }