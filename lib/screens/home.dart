import 'package:flutter/material.dart';

/// Renders the home page of a logged in user.
class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final String title = 'Home';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text('Hello KA')),
    );
  }
}
