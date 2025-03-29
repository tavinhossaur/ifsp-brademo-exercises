import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

class Login {
  late final String _username;
  late final String _password;

  Login({required String username, required String password}) : _username = username, _password = password;

  String get username => _username;
  String get password => _password;

  void auth(BuildContext context) {
    if (_username != 'admin' && _password != '1234') {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid username or password')));
      return;
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(title: "Home Page")));
  }
} 