import 'package:flutter/material.dart';

import '../models/trip.dart';
import '../services/trip_service.dart';
import '../widgets/default_drawer.dart';
import '../widgets/trip_list_tile.dart';

/// Displays programs.
class TripPage extends StatelessWidget {
  static const String id = '/trip';

  final String title = 'Trips';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        drawer: DefaultDrawer(currentPage: TripPage.id),
        body: FutureBuilder(
          future: TripService().getTrips(),
          builder: (context, AsyncSnapshot<List<Trip>> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return snapshot.hasData
                  ? ListView(
                      children: snapshot.data
                          .map((trip) => TripListTile(
                                trip: trip,
                              ))
                          .toList(),
                    )
                  : Center(
                      child: Text(
                        "No data",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
