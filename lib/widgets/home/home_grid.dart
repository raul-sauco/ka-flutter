import 'package:flutter/material.dart';

/// HomeGrid displays a grid of useful actions on the `HomePage`
///
/// TODO this page needs to be reactive and adjust content based
/// on real-time circumstances, some examples:
/// - During a trip should display schedule.
/// - Before the trip should warn that travel dates are approaching.
/// - After a trip should show state of expenses and reports.
class HomeGrid extends StatelessWidget {
  final Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        HomeGridItem(
          color: Colors.red[900],
          icon: Icons.date_range,
          title: 'SCHEDULE',
        ),
        HomeGridItem(
          color: Colors.indigo[900],
          icon: Icons.attach_money,
          title: 'EXPENSES',
        ),
        HomeGridItem(
          color: Colors.cyan[900],
          icon: Icons.flight,
          title: 'TRAVEL',
        ),
        HomeGridItem(
          color: Colors.orange[900],
          icon: Icons.note_add_outlined,
          title: 'REPORTS',
        ),
        HomeGridItem(
          color: Colors.green[900],
          icon: Icons.local_hospital,
          title: 'FA',
        ),
        HomeGridItem(
          color: Colors.blue[900],
          icon: Icons.map_outlined,
          title: 'MAP',
        ),
      ],
    );
  }
}

/// Render one of the home grid items.
class HomeGridItem extends StatelessWidget {
  final Color color;
  final IconData icon;
  final double opacity;
  final String title;

  HomeGridItem({
    this.color = Colors.black,
    this.icon = Icons.question_answer,
    this.opacity = 0.15,
    this.title = 'Hello',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color.withOpacity(opacity),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Not implemented yet!'),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 28.0,
                ),
              ),
              Icon(
                icon,
                size: 80,
                color: color.withAlpha(220),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
