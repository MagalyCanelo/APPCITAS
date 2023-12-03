import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  final Function(DateTime) onDateSelected;
  const CustomCalendar({super.key, required this.onDateSelected});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    if (day.isBefore(DateTime.now().subtract(const Duration(days: 1)))) {
      return;
    }

    setState(() {
      today = day;
    });

    widget.onDateSelected(today);
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'en_US',
      rowHeight: 41.0,
      headerStyle:
          const HeaderStyle(formatButtonVisible: false, titleCentered: true),
      availableGestures: AvailableGestures.all,
      selectedDayPredicate: (day) => isSameDay(day, today),
      focusedDay: today,
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      onDaySelected: _onDaySelected,
    );
  }
}
