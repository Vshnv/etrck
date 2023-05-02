
import 'package:flutter/cupertino.dart';
import 'package:timetable_view/timetable_view.dart';

final testData =  [
  LaneEvents(
      lane: Lane(
        name: 'Monday',
        laneIndex: 0,
      ),
      events: [
        TableEvent(
          title: 'CSE1001',
          startTime: TableEventTime(hour: 10, minute: 0),
          endTime: TableEventTime(hour: 11, minute: 20),
          eventId: 1, laneIndex: 0,
        ),
      ]
  ),
];


class TimeTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TimetableView(
      laneEventsList: testData,
      onEmptySlotTap: (int laneIndex, TableEventTime start, TableEventTime end) {  },
      onEventTap: (TableEvent event) {  },
    );
  }
}
