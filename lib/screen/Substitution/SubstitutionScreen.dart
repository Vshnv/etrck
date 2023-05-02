class SubstitutionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TimetableView(
      laneEventsList: testData,
      onEmptySlotTap: (int laneIndex, TableEventTime start, TableEventTime end) {  },
      onEventTap: (TableEvent event) {  },
    );
  }
}
