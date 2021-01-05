import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:kaf/widgets/default_drawer.dart';

/// Renders the home page of a logged in user.
class HomePage extends StatelessWidget {
  static const String id = '/home';

  HomePage({Key key}) : super(key: key);

  final String title = 'Home';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: DefaultDrawer(),
      body: Center(
        child: Text(
          GlobalConfiguration().getValue('username'),
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
