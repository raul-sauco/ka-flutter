import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:kaf/models/user.dart';
import 'package:kaf/services/auth.dart';
import 'package:kaf/screens/home.dart';
import 'package:kaf/screens/login.dart';

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
          print('AuthService connection done');
          print(snapshot);
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
