import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import '../screens/homepage.dart';
import '../screens/videos.dart';
import '../screens/chats.dart';
import '../screens/settings.dart';

void main() {
  runApp(const NavHub(initialIndex: 0));
}

class NavHub extends StatefulWidget {
  final int initialIndex;

  const NavHub({super.key, required this.initialIndex});

  @override
  State<NavHub> createState() => _NavHubState();
}

class _NavHubState extends State<NavHub> {
  late PageController _pageController;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
    _pageController = PageController(initialPage: _selectedIndex);
  }

  final List<Widget> _screens = [
    HomepageGerman(),
    Videos(),
    Chats(),
    Settings()
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: _screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CustomNavigationBar(
            isFloating: true,
            elevation: 0,
            iconSize: 30,
            borderRadius: const Radius.circular(10),
            selectedColor: Colors.purple,
            unSelectedColor: Colors.white,
            backgroundColor: Colors.black,
            strokeColor: Colors.white,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.home_filled),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.video_library),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.chat),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.settings),
              ),
            ],
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
          ),
        ),
      ),
    );
  }
}
