import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import 'package:kaf/screens/home.dart';
import 'package:kaf/screens/login.dart';

/// RootPage serves as a placeholder root tree node.
///
/// The widget will decide which page to serve based on the
/// current user's authentication status.
class RootPage extends StatelessWidget {
  static const String id = '/';
  final bool auth;

  RootPage({this.auth});

  @override
  Widget build(BuildContext context) {
    return GlobalConfiguration().getValue("accessToken") != ''
        ? HomePage()
        : LoginPage();
  }
}
