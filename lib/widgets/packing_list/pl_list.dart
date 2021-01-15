import 'package:flutter/material.dart';

import '../../models/packing_list_item.dart';
import '../../models/trip.dart';
import '../../services/packing_list_service.dart';
import '../../widgets/packing_list/pl_list_item.dart';

/// Displays a list of `PackingListItem` models.
class PackingListItemList extends StatelessWidget {
  final Trip trip;
  PackingListItemList({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PackingListItem>>(
      future: PackingListService(tripId: trip.id).getItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData && snapshot.data.length > 0) {
            List<PackingListItem> items = sort(snapshot.data);
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) =>
                  PackingListItemListItem(item: items[index]),
            );
          } else {
            return Center(child: Text('No details for this trip'));
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

// Helper sort method, if used in more than one spot, move it to
// `PackingListItem` and make it implement `CompareWith`.
List<PackingListItem> sort(List<PackingListItem> items) {
  items.sort((PackingListItem a, PackingListItem b) {
    int bring = a.getBring() - b.getBring();
    if (bring != 0) {
      return bring;
    }
    return a.getOrder() - b.getOrder();
  });
  return items;
}
