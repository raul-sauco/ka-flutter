import 'package:flutter/material.dart';

import '../../models/trip.dart';

/// Renders the packing list section tab on a trip detail page.
class TripPackListSection extends StatelessWidget {
  final Trip trip;
  final double gap = 16;
  TripPackListSection({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: gap, horizontal: gap / 2),
      child: Column(
        // TODO should be a list of items to pack for the trip.
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Pack List',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: gap),
        ],
      ),
    );
  }
}
