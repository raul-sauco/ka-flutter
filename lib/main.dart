import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kaf/screens/home.dart';
import 'package:kaf/screens/login.dart';

// https://stackoverflow.com/a/54382116/2557030
Future<void> main() async {
  // Do this outside App build method
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset("local_settings");
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var accessToken = prefs.getString('accessToken');
  bool auth = accessToken != null; // todo, is valid?
  if (auth) {
    print('Access token: $accessToken');
    GlobalConfiguration().updateValue("accessToken", accessToken);
  } else {
    print('No access token');
  }
  runApp(MyApp(
    auth: auth,
  ));
}

class MyApp extends StatelessWidget {
  final bool auth;

  MyApp({this.auth});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: auth ? HomePage() : LoginPage(),
    );
  }
}
