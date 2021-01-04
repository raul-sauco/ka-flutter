import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kaf/screens/home.dart';
import 'package:kaf/screens/login.dart';

// https://stackoverflow.com/a/54382116/2557030
Future<void> main() async {
  // Init outside App build method
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset("local_settings");
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // await prefs.clear();

  var accessToken = prefs.getString('accessToken');
  bool auth = accessToken != null; // todo, is valid?
  if (auth) {
    print('Access token: $accessToken');
    GlobalConfiguration().updateValue("accessToken", accessToken);
    GlobalConfiguration().updateValue("username", prefs.getString("username"));
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
      title: 'KA Flutter',
      theme: ThemeData(
        primaryColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: auth ? HomePage() : LoginPage(),
    );
  }
}
