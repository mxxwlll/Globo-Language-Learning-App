import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/navigationhub.dart';

void main() {
  runApp(const LessonCompletionScreen());
}

class LessonCompletionScreen extends StatelessWidget {
  const LessonCompletionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
          ),
          home: Scaffold(
            body: ListView(children: [
              LessonCompletion(),
            ]),
          ),
        );
      },
    );
  }
}

class LessonCompletion extends StatefulWidget {
  const LessonCompletion({super.key});

  @override
  _LessonCompletionState createState() => _LessonCompletionState();
}

class _LessonCompletionState extends State<LessonCompletion> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const NavHub(initialIndex: 0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 812.h,
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
                left: 24.r,
                top: 200.r,
                child: SizedBox(
                  width: 326.w,
                  height: 85.h,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Times of the year\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.sp,
                            fontFamily: 'Klarna Text',
                            fontWeight: FontWeight.w500,
                            height: 0.h,
                          ),
                        ),
                        TextSpan(
                          text: '(Zeiten des Jahres)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36.sp,
                            fontFamily: 'Klarna Text',
                            fontWeight: FontWeight.w700,
                            height: 0.h,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 124.r,
                top: 72.r,
                child: Container(
                  width: 128.w,
                  height: 128.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/calender.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 116.r,
                top: 342.r,
                child: Container(
                  width: 128.w,
                  height: 127.74.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/check-mark-button-joypixels.gif'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 46.r,
                top: 486.r,
                child: SizedBox(
                  width: 284.w,
                  height: 50.h,
                  child: Text(
                    'Lesson Finished!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.sp,
                      fontFamily: 'Klarna Text',
                      fontWeight: FontWeight.w700,
                      height: 0.h,
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
