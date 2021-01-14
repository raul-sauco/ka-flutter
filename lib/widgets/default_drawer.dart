import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth.dart';
import '../screens/document/documents.dart';
import '../screens/home.dart';
import '../screens/root.dart';
import '../screens/trip/trips.dart';

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
              child: Text(
                'MENU',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            enabled: currentPage != HomePage.id,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Trips'),
            enabled: currentPage != TripsPage.id,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, TripsPage.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Documents'),
            enabled: currentPage != DocumentsPage.id,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, DocumentsPage.id);
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
