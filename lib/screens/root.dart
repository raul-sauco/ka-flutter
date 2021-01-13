import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import '../services/auth.dart';
import 'home.dart';
import 'login.dart';

/// RootPage serves as a placeholder root tree node.
///
/// The widget will decide which page to serve based on the
/// current user's authentication status.
class RootPage extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<AuthService>(context).getUser(),
      builder: (context, AsyncSnapshot<User> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return snapshot.hasData ? HomePage() : LoginPage();
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
