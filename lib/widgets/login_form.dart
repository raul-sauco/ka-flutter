import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Login screen lets the user enter login credentials.
///
/// The screen needs state to keep itself up to date with changes on the
/// information entered by the user.
class LoginForm extends StatefulWidget {
  /// Used by the router to index this screen.
  static const passwordLabel = 'Password';
  final Function loginCallback;

  LoginForm({@required this.loginCallback});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Global key to identify and validate.
  final _formKey = GlobalKey<FormState>();
  // Used to temporarily store login credentials. Not final, can be updated.
  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // Use a form to keep values together.
      child: Form(
        key: _formKey,
        child: Column(
          // Align the form items in the middle of the page.
          mainAxisAlignment: MainAxisAlignment.center,
          // Stretch will make the button full-width.
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getFormField('Username', (String value) {
              _username = value.trim();
            }),
            SizedBox(height: 16),
            getFormField(LoginForm.passwordLabel, (String value) {
              _password = value.trim();
            }),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text("Log in"),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // If the form passes validation, save the values.
                  _formKey.currentState.save();
                  // Send the data to the login attempt callback
                  widget.loginCallback(
                      LoginArguments(
                        _username,
                        _password,
                      ),
                      context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// Generate one of the form fields.
///
/// Extract this widget into a method because we use it twice with very
/// similar structure.
TextFormField getFormField(String labelText, Function onSaved) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: labelText,
      enabledBorder: OutlineInputBorder(),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
    ),
    validator: (value) {
      // Especial case for the password, we need a minimum length.
      if (labelText == LoginForm.passwordLabel && value.length < 6) {
        return 'Please enter at least 6 characters';
      }
      return value.isEmpty ? 'Please enter some text' : null;
    },
    onSaved: onSaved,
    // Only obscure the password field.
    obscureText: labelText == LoginForm.passwordLabel,
    inputFormatters: [
      if (labelText == LoginForm.passwordLabel)
        // Don't allow whitespace in the password.
        FilteringTextInputFormatter.deny(new RegExp(r"\s"))
      else
        // Only allow A-Z a-z 0-9 - . on the username. Real use would need
        // to be fancier, i.e. check that the first/last characters are a-z
        FilteringTextInputFormatter.allow(new RegExp(r"[\w-.]")),
    ],
  );
}

// Class to store the login arguments.
class LoginArguments {
  final String username;
  final String password;

  // Using positional parameters for simplicity.
  LoginArguments(this.username, this.password);
}
