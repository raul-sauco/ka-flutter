import 'package:flutter/material.dart';

import 'package:global_configuration/global_configuration.dart';
import 'package:provider/provider.dart';

import 'package:kaf/screens/home.dart';
import 'package:kaf/screens/login.dart';
import 'package:kaf/screens/root.dart';
import 'package:kaf/services/auth.dart';

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
        RootPage.id: (context) => RootPage(),
        LoginPage.id: (context) => LoginPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
