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
