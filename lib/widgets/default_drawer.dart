import 'package:flutter/material.dart';

import 'package:global_configuration/global_configuration.dart';
import 'package:kaf/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
              await logout();
              Navigator.pop(context);
              Navigator.pushNamed(context, LoginPage.id);
            },
          ),
        ],
      ),
    );
  }
}

// Log the user out
Future<void> logout() async {
  print('logging out');
  // Reset global configuration.
  GlobalConfiguration().updateValue("accessToken", '');
  GlobalConfiguration().updateValue("username", '');

  // Delete from shared prefs.
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('accessToken');
  await prefs.remove('username');
  print('removed all prefs');
  print(prefs.getString("username"));
  print(prefs.getString("accessToken"));
}
