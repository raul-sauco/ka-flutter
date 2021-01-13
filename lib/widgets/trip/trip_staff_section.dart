import 'package:flutter/material.dart';

// import '../../helpers/trip_helper.dart';
import '../../models/trip.dart';

/// Renders the staff section tab on a trip detail page.
class TripStaffSection extends StatelessWidget {
  final Trip trip;
  final double gap = 16;
  TripStaffSection({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: gap, horizontal: gap / 2),
      child: Column(
        // TODO should be a list of staff working the trip.
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Staff',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: gap),
        ],
      ),
    );
  }
}
