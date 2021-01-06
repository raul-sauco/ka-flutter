import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kaf/models/user.dart';

class AuthService with ChangeNotifier {
  User user;

  /// Get a User instance either from the class or shared preferences.
  Future<User> getUser() async {
    if (user != null) {
      return user;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.getString("username");
    String accessToken = prefs.getString("accessToken");
    if (username != null && accessToken != null) {
      user = User(username: username, accessToken: accessToken);
      return user;
    } else {
      print('No current user or user data in prefs');
      return null;
    }
  }

  Future<void> logout() async {
    // Delete from shared prefs.
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    await prefs.remove('username');
    this.user = null;
    print('AuthService cleared login data');
  }

  // // wrapping the firebase calls
  // Future createUser(
  //     {String firstName,
  //     String lastName,
  //     String email,
  //     String password}) async {
  //   var r = await FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(email: email, password: password);

  //   var u = r.user;
  //   UserUpdateInfo info = UserUpdateInfo();
  //   info.displayName = '$firstName $lastName';
  //   return await u.updateProfile(info);
  // }

  /// Login user using username and password
  Future<User> loginUser({String username, String password}) async {
    String apiUrl = GlobalConfiguration().getValue('apiUrl');

    try {
      var response = await http.post('$apiUrl/login',
          body: {'username': username, 'password': password});

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
          this.user = new User(
              accessToken: credentials['accessToken'],
              username: credentials['userName']);
          prefs.setString("accessToken", user.accessToken);
          prefs.setString('username', user.username);
          notifyListeners();
          return user;
        } else {
          throw Exception("Wrong credentials");
        }
      } else {
        throw Exception("Server error");
      }
    } catch (e) {
      throw new Exception(e.message);
    }
  }
}
