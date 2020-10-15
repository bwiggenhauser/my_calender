import 'package:flutter/material.dart';

import 'Event.dart';

class EventScrollView extends StatelessWidget {
  const EventScrollView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Event(eventName: 'Rauchen aufgehört', timeStamp: 20201012),
            Event(eventName: 'Rutenfest 2021', timeStamp: 20201012),
            Event(eventName: 'Rettichfest 2021', timeStamp: 20201012),
            Event(eventName: 'Hochzeit Thomas', timeStamp: 20201012),
          ],
        ),
      ),
    );
  }
}
