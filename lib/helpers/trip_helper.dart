import 'package:flutter/material.dart';

/// Helper functionality for the Trip model
class TripHelper {
  /// Returns the Icon widget that corresponds to the trip status value.
  static Icon getStatusIcon(int status) {
    // Cases currently are;
    // 0: DELETED
    // 1: PROPOSED
    // 2: CONFIRMED
    // 3: CANCELLED
    // 10: ACTIVE
    switch (status) {
      case 0:
        return Icon(
          Icons.delete_rounded,
          color: Colors.red,
        );
      case 1:
        return Icon(
          Icons.handyman,
          color: Colors.blue,
        );
      case 2:
        return Icon(
          Icons.done,
          color: Colors.green,
        );
      case 3:
        return Icon(
          Icons.clear,
          color: Colors.red,
        );
      case 10:
        return Icon(
          Icons.check_circle_outline,
          color: Colors.green[900],
        );
      default:
        return Icon(
          Icons.question_answer,
          color: Colors.red,
        );
    }
  }

  /// Return a formatted version of a participant count.
  static String getFormattedCount(int num, String type) {
    if (num == null || num == 0) {
      return 'No ${type}s';
    }
    if (num == 1) {
      return 'One $type';
    }
    return '${num.toString()} ${type}s';
  }
}
