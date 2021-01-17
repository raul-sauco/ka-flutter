import 'package:flutter/material.dart';

/// Renders an `Event` notes in a card like widget.
class EventNotes extends StatelessWidget {
  final String notes;
  final bool isStaff;
  EventNotes(this.notes, {this.isStaff = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Stack(
        fit: StackFit.loose,
        overflow: Overflow.visible,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isStaff ? Colors.purple[50] : Colors.indigo[50],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16, right: 4.0, bottom: 4.0, left: 4.0),
              child: Text(notes),
            ),
          ),
          Positioned(
            top: -12.0,
            left: 8.0,
            child: Container(
              decoration:
                  BoxDecoration(color: isStaff ? Colors.purple : Colors.indigo),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  isStaff ? 'Staff notes' : 'Notes',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
