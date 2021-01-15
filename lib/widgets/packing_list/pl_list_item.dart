import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../models/packing_list_item.dart';

/// Draw one `PackingListItem` details as part of a list.
class PackingListItemListItem extends StatelessWidget {
  final PackingListItem item;
  final String imageUrl = GlobalConfiguration().get('plImgUrl');
  PackingListItemListItem({@required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Container(
              // Green container should fill-up the vertical space.
              constraints: BoxConstraints(minHeight: 120),
              decoration: BoxDecoration(color: Color(getBackgroundColor(item))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      getHeader(item),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    if (item.getRemarks()?.isNotEmpty)
                      Text(
                        item.getRemarks(),
                        style: TextStyle(color: Colors.white),
                      ),
                    if (item.getRemarks()?.isNotEmpty) SizedBox(height: 8),
                    Text(
                      item.getDescription(),
                      style: TextStyle(color: Colors.white),
                    ),
                    if (item.getFooter().isNotEmpty)
                      Text(
                        item.getFooter(),
                        style: TextStyle(color: Colors.white),
                      ),
                    if (item.getFooter().isNotEmpty) SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: 100,
              // Looked into using NetworkImageWithRetry to avoid images
              // not being loaded at all.
              // https://github.com/flutter/flutter_image
              // But eventually will have the app fetch all images on first
              // use and store them in the device (approx 2.2MB) so it does
              // not seem worth adding the retry mechanism here.
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    '${GlobalConfiguration().get('plUrl')}/${item.getImageUrl()}',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Obtain the background color based on the `bring` attribute.
// The attribute indicates whether the item should be brought on the trip.
int getBackgroundColor(PackingListItem item) {
  switch (item.getBring()) {
    case 0:
      return 0xFF007700;
    case 1:
      return 0xFF005C84;
    default:
      return 0xFF84695C;
  }
}

String getHeader(PackingListItem item) {
  var header = item.getName();
  String q = item.getQuantity();
  if (q.isNotEmpty && q != '0' && q != '1') {
    header += ' x $q';
  }
  return header;
}
