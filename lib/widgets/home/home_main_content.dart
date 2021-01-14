import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/auth.dart';
import 'home_grid.dart';

/// Renders the main content, below the AppBar on the `HomePage`.
class HomeMainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          center: FractionalOffset.center,
          startAngle: 0.0,
          endAngle: math.pi * 2,
          colors: const <Color>[
            Color(0x3334A853), // green
            Color(0x33FBBC05), // yellow
            Color(0x33EA4335), // red
            Color(0x334285F4), // blue
            Color(0x3334A853), // green
          ],
          stops: const <double>[0.0, 0.25, 0.5, 0.75, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            HomeWelcomeMessage(),
            Expanded(
              child: HomeGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

/// HomePage welcome component.
class HomeWelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Consumer<AuthService>(
        // TODO hide the widget on scroll up.
        builder: (context, auth, child) => Text(
          "Hi ${auth.user.username}!",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
