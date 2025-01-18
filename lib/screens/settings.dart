import 'package:flutter/material.dart';
import '../screens/editprofile.dart';

void main() {
  runApp(SettingsScreen(name: '',));
}

class SettingsScreen extends StatelessWidget {

  String name;
  SettingsScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Settings(),
        ]),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  final String dropdownValue = 'Everyone';
  final String dropdownValue1 = 'Everyone';
  final bool status = false;

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
                  left: 299,
                  top: 189,
                  child: Container(
                    width: 60,
                    height: 30,
                    child: Switch(
                      value: status,
                      onChanged: (val) {
                        // Handle switch change
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: 299,
                  top: 245,
                  child: Container(
                    width: 60,
                    height: 30,
                    child: Switch(
                      value: status,
                      onChanged: (val) {
                        // Handle switch change
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 192,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 8,
                          top: 22,
                          child: Text(
                            'Not',
                            style: TextStyle(
                              color: Color(0xFFC10000),
                              fontSize: 8,
                              fontFamily: 'Klarna Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 194.50,
                  child: SizedBox(
                    width: 202,
                    height: 19,
                    child: Text(
                      'Receive Push Notifications',
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
                  left: 16,
                  top: 304,
                  child: SizedBox(
                    width: 138,
                    height: 19,
                    child: Text(
                      'Who can add you?',
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
                  left: 16,
                  top: 355,
                  child: SizedBox(
                    width: 175,
                    height: 19,
                    child: Text(
                      'Who can message you?',
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
                  left: 297,
                  top: 289,
                  child: SizedBox(
                    width: 150,
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.699999988079071),
                        fontSize: 14,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                      ),
                      dropdownColor: Colors.grey[800],
                      underline: Container(
                        height: 2,
                        color: Colors.grey[800],
                      ),
                      onChanged: (String? newValue) {
                        // Handle dropdown change
                      },
                      items: <String>['Everyone', 'Friends', 'Family', 'Only Me']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Positioned(
                  left: 297,
                  top: 340,
                  child: SizedBox(
                    width: 150,
                    child: DropdownButton<String>(
                      value: dropdownValue1,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 14,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                      ),
                      dropdownColor: Colors.grey[800],
                      underline: Container(
                        height: 2,
                        color: Colors.grey[800],
                      ),
                      onChanged: (String? newValue) {
                        // Handle dropdown change
                      },
                      items: <String>['Everyone', 'Friends', 'Family', 'Only Me']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
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
                  left: 265.98,
                  top: 127.76,
                  child: SizedBox(
                    width: 74,
                    height: 15,
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.699999988079071),
                        fontSize: 14,
                        fontFamily: 'Klarna Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 339.98,
                  top: 128.26,
                  child: Container(
                    width: 16,
                    height: 16,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                  ),
                ),
                Positioned(
                  left: 327,
                  top: 112,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfileScreen()));
                    },
                    icon: Icon(Icons.arrow_forward_outlined),
                    iconSize: 18,
                  ),
                ),
                Positioned(
                  left: 102,
                  top: 648,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/streamline_customer-support-1-solid.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 95,
                  top: 636,
                  child: Container(
                    width: 185,
                    height: 51,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: InkWell(
                            onTap: () {
                              // Handle the button tap here
                              print('Button tapped');
                            },
                            child: Container(
                              width: 185,
                              height: 51,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Color(0xFF814696),
                                  ),
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
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    // Add a child widget here if you want to show an icon or image inside this container
                                  ),
                                  const SizedBox(width: 8),
                                  SizedBox(
                                    width: 140,
                                    height: 42,
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Need any help? \n',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Klarna Text',
                                              fontWeight: FontWeight.w700,
                                              height: 1.2, // Adjusted height to make text visible
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Get in touch with our customer support team',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Klarna Text',
                                              fontWeight: FontWeight.w500,
                                              height: 1.2, // Adjusted height to make text visible
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 95,
                  top: 566,
                  child: Container(
                    width: 185,
                    height: 54,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: InkWell(
                            onTap: () {
                              // Handle the button tap here
                              print('Button tapped');
                            },
                            child: Container(
                              height: 54,
                              padding: const EdgeInsets.all(8),
                              decoration: ShapeDecoration(
                                color: Color(0xFF15699E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 169,
                                    height: 35,
                                    child: Text(
                                      'Subscribe to our Premium plan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Klarna Text',
                                        fontWeight: FontWeight.w700,
                                        height: 1.0, // Adjusted height to make text visible
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
                  top: 248,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 248,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/ic_outline-alternate-email.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 192,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Notification_Empty.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 250.50,
                  child: SizedBox(
                    width: 202,
                    height: 19,
                    child: Text(
                      'Receive Email Updates',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
