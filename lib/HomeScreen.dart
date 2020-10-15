import 'package:flutter/material.dart';
import 'package:my_calender/constants.dart';
import 'Screens/LeftScreen/LeftScreen.dart';
import 'Screens/RightScreen.dart';
import 'Screens/MainScreen/MainScreen.dart';

class HomeScreen extends StatelessWidget {
  final _controller = PageController(
    initialPage: 1,
  );

  final _pages = [
    LeftScreen(),
    MainScreen(),
    RightScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [MAIN_COLOR_1, MAIN_COLOR_2])),
      child: SafeArea(
        child: PageView(
          controller: _controller,
          children: _pages,
        ),
      ),
    );
  }
}
