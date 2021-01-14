import 'package:flutter/material.dart';

import '../../helpers/trip_helper.dart';
import '../../models/trip.dart';
import '../../screens/trip/trip_details.dart';

/// Draws one trip details onto the UI.
class TripListTile extends StatelessWidget {
  final Trip trip;
  TripListTile({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: TripHelper.getStatusIcon(trip.status),
        title: Text(
          trip.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: TripHelper.getParticipantCount(trip),
        onTap: () {
          Navigator.pushNamed(
            context,
            TripDetailsPage.id,
            arguments: trip,
          );
        },
      ),
    );
  }
}
