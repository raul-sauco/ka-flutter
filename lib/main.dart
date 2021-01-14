import 'package:flutter/material.dart';

import 'package:global_configuration/global_configuration.dart';
import 'package:provider/provider.dart';

import 'screens/document/documents.dart';
import 'screens/document/document_details.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/root.dart';
import 'screens/trip/trip_details.dart';
import 'screens/trip/trips.dart';
import 'services/auth.dart';

// Pattern for conditional navigation on app startup found here:
// https://stackoverflow.com/a/54382116/2557030
Future<void> main() async {
  // Init outside App build method
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset("local_settings");
  runApp(
    ChangeNotifierProvider<AuthService>(
      create: (context) => AuthService(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KA Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RootPage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        DocumentsPage.id: (context) => DocumentsPage(),
        DocumentDetailPage.id: (context) => DocumentDetailPage(),
        LoginPage.id: (context) => LoginPage(),
        RootPage.id: (context) => RootPage(),
        TripDetailsPage.id: (context) => TripDetailsPage(),
        TripsPage.id: (context) => TripsPage(),
      },
    );
  }
}
