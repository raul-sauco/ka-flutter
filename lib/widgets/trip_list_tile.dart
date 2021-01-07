import 'package:flutter/material.dart';
import 'package:kaf/models/trip.dart';

/// Draws one trip details onto the UI.
class TripListTile extends StatelessWidget {
  final Trip trip;
  TripListTile({this.trip});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(trip.name),
    );
  }
}
