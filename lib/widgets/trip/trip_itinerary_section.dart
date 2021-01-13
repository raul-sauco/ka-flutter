import 'package:flutter/material.dart';

// import '../../helpers/trip_helper.dart';
import '../../models/trip.dart';

/// Renders the itinerary section tab on a trip detail page.
class TripItinerarySection extends StatelessWidget {
  final Trip trip;
  final double gap = 16;
  TripItinerarySection({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: gap, horizontal: gap / 2),
      child: Column(
        // TODO should be a list of itinerary events.
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Itinerary',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: gap),
        ],
      ),
    );
  }
}
