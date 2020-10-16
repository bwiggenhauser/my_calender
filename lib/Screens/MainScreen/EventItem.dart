import 'package:flutter/material.dart';
import 'package:my_calender/Helpers/DateConverter.dart';
import 'package:my_calender/constants.dart';

class EventItem extends StatelessWidget {
  final String timeStamp;
  final String eventName;

  const EventItem({Key key, @required this.timeStamp, @required this.eventName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(PADDING_MEDIUM),
      width: MediaQuery.of(context).size.width * 0.9,
      height: PADDING_LARGE * 4,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: PADDING_MEDIUM),
                child: TextProvider(
                  textContent: eventName,
                  textColor: TEXT_COLOR3_DARK_1,
                  textSize: 25,
                  bold: true,
                  spacing: false,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // TODO: delete item from database
                },
                onLongPress: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: PADDING_MEDIUM),
                  child: IconProvider(
                    iconBig: false,
                    iconColor: Colors.grey,
                    iconType: Icon(
                      Icons.delete_forever,
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
          TextProvider(
            textContent: intToString(int.parse(timeStamp)),
            textColor: TEXT_COLOR3_DARK_2,
            textSize: 15,
            bold: false,
            spacing: false,
          ),
        ],
      ),
    );
  }
}
