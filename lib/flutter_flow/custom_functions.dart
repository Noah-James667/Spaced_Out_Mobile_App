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
