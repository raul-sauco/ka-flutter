import 'package:flutter/material.dart';

import '../../models/trip.dart';
import '../guide/guide_list.dart';

/// Renders the staff section tab on a trip detail page.
class TripStaffSection extends StatelessWidget {
  final Trip trip;
  final double gap = 16;
  TripStaffSection({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: gap, horizontal: gap / 2),
      child: GuideList(trip: trip),
    );
  }
}
