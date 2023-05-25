import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

TimeOfDay convertTimeStringToTimeOfDay(String timeString) {
  String time = timeString.replaceAll(' ', '');
  DateTime dateTime = DateFormat('yyyy-MM-dd hh:mma').parse('2022-01-01 $time');
  return TimeOfDay.fromDateTime(dateTime);
}

bool isTimeInRange(
    DateTime currentTime, TimeOfDay startTime, TimeOfDay endTime) {
  final startTimeOfDay = startTime;
  final endTimeOfDay = endTime;

  final startDate = DateTime(
    currentTime.year,
    currentTime.month,
    currentTime.day,
    startTimeOfDay.hour,
    startTimeOfDay.minute,
  );

  final endDate = DateTime(
    currentTime.year,
    currentTime.month,
    currentTime.day,
    endTimeOfDay.hour,
    endTimeOfDay.minute,
  );

  return currentTime.isAfter(startDate) && currentTime.isBefore(endDate);
}
