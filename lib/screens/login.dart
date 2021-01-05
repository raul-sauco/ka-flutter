import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:global_configuration/global_configuration.dart';
import 'package:kaf/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kaf/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  static const String id = '/login';
  LoginPage({Key key}) : super(key: key);

  final String title = 'Login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: LoginForm(
        loginCallback: (args) {
          sendLoginRequest(args, context);
        },
      ),
    );
  }
}

// Send a login request to the API and process the results.
Future<void> sendLoginRequest(LoginArguments args, BuildContext context) async {
  String apiUrl = GlobalConfiguration().getValue("apiUrl");
  var response = await http.post('$apiUrl/login',
      body: {'username': args.username, 'password': args.password});
  print(response.statusCode); // TODO check for errors.
  if (response.statusCode == 200) {
    // Success response will be
    // {
    //   error: false,
    //   message: "OK",
    //   credentials: {
    //     userName: "name",
    //     accessToken: "token"
    //   }
    // }
    dynamic data = jsonDecode(response.body);
    if (data['error'] == false) {
      dynamic credentials = data['credentials'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String accessToken = credentials['accessToken'];
      String username = credentials['userName'];
      prefs.setString("accessToken", accessToken);
      prefs.setString('username', username);
      GlobalConfiguration().updateValue('accessToken', accessToken);
      GlobalConfiguration().updateValue('username', username);
      Navigator.pushNamed(context, HomePage.id);
    } else {
      // todo display the login credentials error in a modal.
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Wrong credentials, try again.'),
        ),
      );
    }
  } else {
    // todo display the network/server error in a modal.
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Server error, try again later.'),
      ),
    );
  }
}
