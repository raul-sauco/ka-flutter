import 'package:flutter/material.dart';

import '../../models/trip.dart';
import '../../widgets/packing_list/pl_list.dart';

/// Renders the packing list section tab on a trip detail page.
class TripPackListSection extends StatelessWidget {
  final Trip trip;
  final double gap = 16;
  TripPackListSection({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: gap, horizontal: gap / 2),
      child: PackingListItemList(trip: trip),
    );
  }
}
