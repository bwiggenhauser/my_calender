import 'package:flutter/material.dart';
import 'package:my_calender/Database/database_helper.dart';

import 'EventItem.dart';

class EventScrollView extends StatefulWidget {
  const EventScrollView({
    Key key,
  }) : super(key: key);

  @override
  _EventScrollViewState createState() => _EventScrollViewState();
}

class _EventScrollViewState extends State<EventScrollView> {
  List<Map<String, dynamic>> events;
  List<Widget> myEvents = [];
  bool correctDataLoaded = false;

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => queryData());
  }

  queryData() async {
    events = await DatabaseHelper.instance.queryAll();
    makeEvents();
  }

  getEvents() {
    Column column = new Column(
      children: myEvents,
    );
    return column;
  }

  makeEvents() {
    if (events != null) {
      for (int i = 0; i < events.length; i++) {
        setState(() {
          myEvents.add(EventItem(
              timeStamp: events[i]['date'].toString(),
              eventName: events[i]['name']));
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  getEvents(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
