import 'package:flutter/material.dart';

import '../../models/trip.dart';
import '../../widgets/trip/trip_detail_section.dart';
import '../../widgets/trip/trip_itinerary_section.dart';
import '../../widgets/trip/trip_pack_list_section.dart';
import '../../widgets/trip/trip_staff_section.dart';

/// TripDetails displays details about one trip model.
///
/// The screen uses a bottom navigation widget to split the content
/// into the four main areas related with the trip.
class TripDetailsPage extends StatefulWidget {
  static const String id = '/trip-details';

  @override
  _TripDetailsPageState createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {
  // Bottom navigation idea from:
  // https://github.com/mireiamarcet/bottom_navigation_bar
  int _selected = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Trip trip = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Details'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selected,
        backgroundColor: Colors.green[100],
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_outlined),
            activeIcon: Icon(Icons.contacts),
            label: 'Staff',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_outlined),
            activeIcon: Icon(Icons.event),
            label: 'Itinerary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.backpack_outlined),
            activeIcon: Icon(Icons.backpack),
            label: 'Pack List',
          ),
        ],
      ),
      body: _selected == 0
          ? TripDetailSection(trip: trip)
          : _selected == 1
              ? TripStaffSection(trip: trip)
              : _selected == 2
                  ? TripItinerarySection(trip: trip)
                  : TripPackListSection(trip: trip),
    );
  }
}
