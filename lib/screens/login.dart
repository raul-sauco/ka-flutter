import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:kaf/widgets/login_form.dart';

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
void sendLoginRequest(LoginArguments args) {
  String apiUrl = GlobalConfiguration().getValue("apiUrl");
  print('TODO. apiurl: $apiUrl');
  print('Username: ${args.username}. Password ${args.password}');
}
