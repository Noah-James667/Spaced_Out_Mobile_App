// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> updateTaskCompleteDate(
    DocumentReference taskReference, List<String> daysRepeating) async {
  if (daysRepeating.isEmpty) return; // Do nothing if no repeat days

  // Map days of the week to integers (Sunday = 0, Monday = 1, ..., Saturday = 6)
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
  int todayIndex = today.weekday %
      7; // Convert (Monday=1...Sunday=7) to (Sunday=0...Saturday=6)

  // Convert repeating days to numeric values and sort them
  List<int> repeatingIndexes =
      daysRepeating.map((day) => daysMap[day]!).toList()..sort();

  // Find the next repeating day
  DateTime nextCompleteDate;
  for (int index in repeatingIndexes) {
    if (index >= todayIndex) {
      int daysUntilNext = index - todayIndex;
      nextCompleteDate = today.add(Duration(days: daysUntilNext));
      break;
    }
  }

  // If no day in the current week is ahead, pick the first available one next week
  nextCompleteDate =
      today.add(Duration(days: (7 - todayIndex) + repeatingIndexes.first));

  // Update Firestore task document
  await taskReference.update({'complete_date': nextCompleteDate});
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
