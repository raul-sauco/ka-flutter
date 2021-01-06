import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:kaf/services/auth.dart';
import 'package:kaf/screens/root.dart';
import 'package:kaf/screens/home.dart';

/// The default application side menu most pages will use.
class DefaultDrawer extends StatelessWidget {
  final String currentPage;

  DefaultDrawer({this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 86,
            child: DrawerHeader(
              child: Text('MENU'),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            enabled: currentPage == HomePage.id,
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'ACCOUNT',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () async {
              await Provider.of<AuthService>(context, listen: false).logout();
              Navigator.pushNamedAndRemoveUntil(
                  context, RootPage.id, (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}
