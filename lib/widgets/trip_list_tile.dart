import 'package:flutter/material.dart';
import 'package:kaf/helpers/trip_helper.dart';
import '../models/trip.dart';

/// Draws one trip details onto the UI.
class TripListTile extends StatelessWidget {
  final Trip trip;
  TripListTile({this.trip});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: TripHelper.getStatusIcon(trip.status),
        title: Text(
          trip.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: getParticipantCount(trip),
        onTap: () {
          print('Tapped trip ${trip.id} tile. TODO navigate to detail page');
        },
      ),
    );
  }
}

Text getParticipantCount(Trip trip) {
  return Text(
    TripHelper.getFormattedCount(trip.numOfStudents, 'student') +
        '. ' +
        TripHelper.getFormattedCount(trip.numOfTeachers, 'teacher') +
        '.',
  );
}
