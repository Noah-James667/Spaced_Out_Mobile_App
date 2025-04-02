import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? displaydaysrepeating(List<String> daysRepeating) {
  if (daysRepeating.isEmpty) {
    return "No days selected";
  }
  return daysRepeating.map((day) => day.substring(0, 3)).join(", ");
}

List<DateTime> getHighlightedDates(List<DateTime> completeByDates) {
  return completeByDates; // Returns the list of dates to be highlighted
}

List<DateTime>? getMonthView(DateTime? currentDate) {
  if (currentDate == null) return null;

  final List<DateTime> monthView = [];

  final int year = currentDate.year;
  final int month = currentDate.month;

  final DateTime firstDayOfMonth = DateTime(year, month, 1);
  final int daysInMonth = DateTime(year, month + 1, 0).day;

  int weekdayOfFirstDay = firstDayOfMonth.weekday;
  if (weekdayOfFirstDay == 7) weekdayOfFirstDay = 0;

  for (int i = 0; i < weekdayOfFirstDay; i++) {
    monthView
        .add(firstDayOfMonth.subtract(Duration(days: weekdayOfFirstDay - i)));
  }

  for (int i = 1; i <= daysInMonth; i++) {
    monthView.add(DateTime(year, month, i));
  }

  int daysAdded = monthView.length;

  for (int i = 1; daysAdded % 7 != 0; i++) {
    monthView.add(DateTime(year, month + 1, i));
    daysAdded++;
  }

  return monthView;
}

DateTime? convertCurrentTimetoDay(DateTime? currentTime) {
// convert the current time into a dateTime format & return the date
  if (currentTime == null) return null;
  final now = DateTime.now();
  final date = DateTime(now.year, now.month, now.day);
  return date;
}

DateTime getNextCompleteDate(
  List<String> daysRepeating,
  DateTime pickedTime,
) {
  if (daysRepeating.isEmpty) return pickedTime;

  // Map days of the week to integers
  Map<String, int> daysMap = {
    'Sunday': 0,
    'Monday': 1,
    'Tuesday': 2,
    'Wednesday': 3,
    'Thursday': 4,
    'Friday': 5,
    'Saturday': 6
  };

  // Get today's date and weekday index
  DateTime today = DateTime.now();
  int todayIndex = today.weekday % 7;

  // Convert repeating days to their numeric values and sort them
  List<int> repeatingIndexes =
      daysRepeating.map((day) => daysMap[day]!).toList()..sort();

  // Find the next repeating day
  for (int index in repeatingIndexes) {
    if (index >= todayIndex) {
      int daysUntilNext = index - todayIndex;
      DateTime nextDate = today.add(Duration(days: daysUntilNext));
      return DateTime(nextDate.year, nextDate.month, nextDate.day,
          pickedTime.hour, pickedTime.minute);
    }
  }

  // If no day in the current week is ahead, pick the first available one next week
  int daysUntilNext = (7 - todayIndex) + repeatingIndexes.first;
  DateTime nextDate = today.add(Duration(days: daysUntilNext));
  return DateTime(nextDate.year, nextDate.month, nextDate.day, pickedTime.hour,
      pickedTime.minute);
}

DateTime? returnDayMonthPicker(DateTime? datePicker) {
  // Recieves a variable of type dateTime and returns the day, month, and year in a dateTime type
  if (datePicker == null) return null;
  return DateTime(datePicker.year, datePicker.month, datePicker.day);
}

DateTime getNextMonthDayYear(List<String> daysRepeating) {
  if (daysRepeating.isEmpty) return DateTime.now();

  // Map days of the week to integers
  Map<String, int> daysMap = {
    'Sunday': 0,
    'Monday': 1,
    'Tuesday': 2,
    'Wednesday': 3,
    'Thursday': 4,
    'Friday': 5,
    'Saturday': 6
  };

  // Get today's date and weekday index
  DateTime today = DateTime.now();
  int todayIndex = today.weekday % 7;

  // Convert repeating days to their numeric values and sort them
  List<int> repeatingIndexes =
      daysRepeating.map((day) => daysMap[day]!).toList()..sort();

  // Find the next repeating day
  for (int index in repeatingIndexes) {
    if (index >= todayIndex) {
      int daysUntilNext = index - todayIndex;
      DateTime nextDate = today.add(Duration(days: daysUntilNext));
      return DateTime(nextDate.year, nextDate.month, nextDate.day);
    }
  }

  // If no day in the current week is ahead, pick the first available one next week
  int daysUntilNext = (7 - todayIndex) + repeatingIndexes.first;
  DateTime nextDate = today.add(Duration(days: daysUntilNext));
  return DateTime(nextDate.year, nextDate.month, nextDate.day);
}
