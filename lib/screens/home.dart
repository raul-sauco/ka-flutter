import 'package:flutter/material.dart';
import 'package:kaf/services/auth.dart';
import 'package:kaf/widgets/default_drawer.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<AuthService>(
        builder: (context, auth, child) {
          return Center(
            child: Text(
              "Welcome ${auth.user.username}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
