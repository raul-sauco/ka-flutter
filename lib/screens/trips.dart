import 'package:flutter/material.dart';

import '../widgets/default_drawer.dart';
import '../widgets/list_widgets/trip_list.dart';

/// TripsPage displays lists of trips, the central point of data
/// in the business model.
class TripsPage extends StatelessWidget {
  static const String id = '/trips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trips'),
      ),
      drawer: DefaultDrawer(currentPage: TripsPage.id),
      body: TripList(),
    );
  }
}
