import 'package:flutter/material.dart';
import 'package:my_calender/constants.dart';
import 'EventAddContainer.dart';

class LeftScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MAIN_COLOR_1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: PADDING_MEDIUM * 6,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: PADDING_LARGE,
                  horizontal: PADDING_MEDIUM,
                ),
                child: TextProvider(
                  textColor: TEXT_COLOR_BRIGHT_1,
                  textContent: 'EVENT HINZUFÜGEN',
                  textSize: 35.0,
                  bold: true,
                  spacing: true,
                ),
              ),
            ),
            EventAddContainer(),
          ],
        ),
      ),
    );
  }
}
