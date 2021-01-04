import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

/// Renders the home page of a logged in user.
class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final String title = 'Home';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          GlobalConfiguration().getValue('username'),
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
