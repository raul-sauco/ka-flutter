import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:kaf/services/auth.dart';
import 'package:kaf/widgets/login_form.dart';

/// LoginPage implements the app login functionality.
class LoginPage extends StatefulWidget {
  static const String id = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : LoginForm(loginCallback: (args, ctx) async {
              print('Login Arguments ${args.username}, ${args.password}');
              setState(() {
                _loading = true;
              });
              try {
                await Provider.of<AuthService>(context, listen: false)
                    .loginUser(
                        username: args.username, password: args.password);
                // No need to navigate because we are already in root.
                // Navigator.pushNamedAndRemoveUntil(context, RootPage.id,
                // (Route<dynamic> route) => false);
              } on Exception catch (error) {
                setState(() {
                  _loading = false;
                });
                return _buildErrorDialog(context, error.toString());
              }
            }),
    );
  }
}

Future _buildErrorDialog(BuildContext context, _message) {
  return showDialog(
    builder: (context) {
      return AlertDialog(
        title: Text('Error Message'),
        content: Text(_message),
        actions: <Widget>[
          FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      );
    },
    context: context,
  );
}
