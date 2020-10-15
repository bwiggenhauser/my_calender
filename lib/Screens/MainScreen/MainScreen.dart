import 'package:flutter/material.dart';
import 'package:my_calender/Screens/MainScreen/TopMenuBar.dart';
import 'package:my_calender/constants.dart';
import 'package:flutter/cupertino.dart';

import 'EventScrollView.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [MAIN_COLOR_1, MAIN_COLOR_2],
        ),
      ),
      child: Column(
        children: [
          TopMenuBar(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: PADDING_LARGE, horizontal: PADDING_MEDIUM),
              child: TextProvider(
                textColor: TEXT_COLOR_BRIGHT_1,
                textContent: 'MEINE EVENTS',
                textSize: 35.0,
                bold: true,
                spacing: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: PADDING_LARGE),
            child: Divider(
              color: TEXT_COLOR2_BRIGHT_2,
              indent: PADDING_MEDIUM,
              endIndent: PADDING_MEDIUM,
              thickness: 2.0,
            ),
          ),
          EventScrollView(),
        ],
      ),
    );
  }
}
