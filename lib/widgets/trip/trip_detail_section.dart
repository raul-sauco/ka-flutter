import 'package:flutter/material.dart';

import '../../helpers/trip_helper.dart';
import '../../models/trip.dart';

/// Renders the detail section tab on a trip detail page.
class TripDetailSection extends StatelessWidget {
  final Trip trip;
  final double gap = 16;
  TripDetailSection({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: gap, horizontal: gap / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            trip.name,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: gap),
          Row(
            children: [
              Text('Status: '),
              TripHelper.getStatusIcon(trip.status),
              Text(
                TripHelper.getStatusText(trip.status),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: gap * 2),
          Text(
            'Participants',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: gap),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Expected: ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                TextSpan(
                  text: TripHelper.getParticipantCountString(trip),
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
          SizedBox(height: gap),
          Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            defaultColumnWidth: FlexColumnWidth(1.0),
            children: [
              TableRow(
                children: [
                  TripParticipantsTableCell(text: 'Signed up'),
                  TripParticipantsTableCell(text: 'Students'),
                  TripParticipantsTableCell(text: 'Teachers'),
                ],
              ),
              TableRow(
                children: [
                  TripParticipantsTableCell(text: 'Female'),
                  TripParticipantsTableCell(
                      text: trip.numOfFemaleStudents?.toString() ?? '0'),
                  TripParticipantsTableCell(
                      text: trip.numOfTeachers?.toString() ?? '0'),
                ],
              ),
              TableRow(
                children: [
                  TripParticipantsTableCell(text: 'Male'),
                  TripParticipantsTableCell(
                      text: trip.numOfMaleStudents?.toString() ?? '0'),
                  TripParticipantsTableCell(text: '-'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TripParticipantsTableCell extends StatelessWidget {
  final String text;
  TripParticipantsTableCell({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
