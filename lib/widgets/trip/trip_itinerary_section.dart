import 'package:flutter/material.dart';

import '../../models/activity_group.dart';
import '../../models/trip.dart';
import '../activity_group/activity_group_itinerary.dart';

/// Renders the itinerary section tab on a trip detail page.
class TripItinerarySection extends StatefulWidget {
  final Trip trip;
  TripItinerarySection({@required this.trip});
  @override
  _TripItinerarySectionState createState() => _TripItinerarySectionState();
}

class _TripItinerarySectionState extends State<TripItinerarySection>
    with SingleTickerProviderStateMixin {
  final double gap = 16;
  List<ActivityGroup> ags;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    ags = widget.trip.activityGroups.toList();
    _controller = TabController(
      length: ags.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.indigo),
          child: TabBar(
            controller: _controller,
            tabs: ags.map((ag) => Tab(text: ag.name)).toList(),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: ags
                .map((ag) =>
                    ActivityGroupTripItinerary(trip: widget.trip, ag: ag))
                .toList(),
          ),
        ),
      ],
    );
  }
}
