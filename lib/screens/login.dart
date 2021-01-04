import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:kaf/widgets/login_form.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  final String title = 'Login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: LoginForm(
        loginCallback: sendLoginRequest,
      ),
    );
  }
}

// Send a login request to the API and process the results.
Future<void> sendLoginRequest(LoginArguments args) async {
  String apiUrl = GlobalConfiguration().getValue("apiUrl");
  var response = await http.post('$apiUrl/login',
      body: {'username': args.username, 'password': args.password});
  print(response.statusCode); // TODO check for errors.

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
  dynamic credentials = data['credentials'];
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("accessToken", credentials['accessToken']);
  prefs.setString('username', credentials['userName']);
}
