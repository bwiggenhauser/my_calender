import 'package:flutter/material.dart';
import 'package:my_calender/constants.dart';

class EventNameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.symmetric(
        horizontal: PADDING_LARGE,
        vertical: PADDING_MEDIUM,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[700],
            blurRadius: 1.0,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: TextField(
        maxLength: 40,
        decoration: InputDecoration(
          labelText: "Event Name",
        ),
      ),
    );
  }
}
