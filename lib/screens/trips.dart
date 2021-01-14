import 'package:flutter/material.dart';
import 'package:kaf/widgets/utils/app_search_bar.dart';

import '../widgets/default_drawer.dart';
import '../widgets/list_widgets/trip_list.dart';

/// TripsPage displays lists of trips, the central point of data
/// in the business model.
class TripsPage extends StatefulWidget {
  static const String id = '/trips';

  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  String _query = '';

  void _setQuery(String query) {
    setState(() {
      _query = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppSearchBar(
        title: 'Trips',
        searchCallback: _setQuery,
      ),
      drawer: DefaultDrawer(currentPage: TripsPage.id),
      body: TripList(query: _query),
    );
  }
}
