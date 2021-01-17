import 'package:flutter/material.dart';

import '../../models/event.dart';
import '../../widgets/event/event_notes.dart';

/// Render a list item using `Event` data.
class EventListItem extends StatelessWidget {
  final Event event;
  EventListItem({@required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: event.startTime.substring(0, 5),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (event.getActivityTypeName().isNotEmpty)
                      TextSpan(text: ' ' + event.getActivityTypeName()),
                  ],
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              if (event.getName().isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(event.getName()),
                ),
              if (event.getNotes().isNotEmpty) EventNotes(event.getNotes()),
              if (event.getStaffNotes().isNotEmpty)
                EventNotes(
                  event.getStaffNotes(),
                  isStaff: true,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
