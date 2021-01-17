import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../helpers/trip_helper.dart';
import '../../models/activity_group.dart';
import '../../models/event.dart';
import '../../models/trip.dart';
import '../../services/event_service.dart';
import '../../widgets/event/event_list_item.dart';

/// Renders one `Trip`'s `ActivityGroup` itinerary.
class ActivityGroupTripItinerary extends StatelessWidget {
  final Trip trip;
  final ActivityGroup ag;
  ActivityGroupTripItinerary({@required this.trip, @required this.ag});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>>(
        future: EventService(agId: ag.id).getNextPage(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData && snapshot.data.length > 0) {
              List<Event> events = snapshot.data;
              return ListView(
                children: getAgItinerary(trip, events),
              );
            } else {
              return Center(
                  child: Text('There are no events for this Activity Group'));
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}

List<Widget> getAgItinerary(Trip trip, List<Event> events) {
  List<Widget> list = [];
  List<DateTime> dates = TripHelper.getTripDates(trip);
  // Dates could come unsorted from the API.
  dates.sort();
  dates.forEach((date) {
    list.addAll(getDayItinerary(date, events));
  });
  return list;
}

Iterable<Widget> getDayItinerary(DateTime date, List<Event> events) {
  String ymdString = date.toUtc().toString().split(' ')[0];
  List<Event> daysEvents =
      events.where((event) => event.date == ymdString).toList();
  daysEvents.sort((Event a, Event b) => a.startTime.compareTo(b.startTime));
  return [
    ItineraryDateHeader(date),
    ...daysEvents.map((e) => EventListItem(event: e))
  ];
}

/// Render one of the itinerary date headers.
class ItineraryDateHeader extends StatelessWidget {
  final DateTime date;
  ItineraryDateHeader(this.date);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.indigo),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            DateFormat.yMMMd().format(date),
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
