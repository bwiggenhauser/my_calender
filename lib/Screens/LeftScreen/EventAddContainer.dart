import 'package:flutter/material.dart';
import 'package:my_calender/Database/Database.dart';
import 'package:my_calender/Event.dart';
import 'package:my_calender/Helpers/DateConverter.dart';
import 'package:sqflite/sqflite.dart';
import '../../constants.dart';

class EventAddContainer extends StatefulWidget {
  @override
  _EventAddContainerState createState() => _EventAddContainerState();
}

class _EventAddContainerState extends State<EventAddContainer> {
  DateTime selectedDate = DateTime.now();
  var dbHelper;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
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
      child: Column(
        children: [
          TextField(
            maxLength: 40,
            decoration: InputDecoration(
              labelText: "Event Name",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: PADDING_MEDIUM),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: PADDING_SMALL),
                  child: TextProvider(
                    bold: true,
                    spacing: false,
                    textColor: TEXT_COLOR3_DARK_1,
                    textContent: toFinalString(selectedDate),
                    textSize: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: new DateTime.now(),
                      firstDate: new DateTime.utc(2000, 1, 1),
                      lastDate: new DateTime.utc(2040, 1, 1),
                    ).then((date) {
                      if (date != null) {
                        setState(() {
                          selectedDate = date;
                        });
                      }
                    });
                  },
                  icon: Icon(
                    Icons.calendar_today,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: PADDING_MEDIUM,
              bottom: PADDING_SMALL,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    BORDER_RADIUS,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: PADDING_MEDIUM,
                  vertical: PADDING_MEDIUM,
                ),
                color: MAIN_COLOR_1,
                onPressed: () async {
                  dbHelper = DBHelper();
                  Event e =
                      Event(id: 0, name: "My first event", date: 20201012);
                  await dbHelper.insertEvent(e);
                  var x = dbHelper.events();
                  print(x);
                },
                child: TextProvider(
                  bold: true,
                  spacing: false,
                  textColor: TEXT_COLOR_BRIGHT_1,
                  textContent: "Event hinzufügen",
                  textSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
