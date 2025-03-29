import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            Padding(padding: EdgeInsets.all(20), child: Image.asset('assets/flutter-logo-brand.png', height: 80)),
            LoginForm(),
            Spacer(flex: 1),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text('New user? Create Account',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ] 
        ),
      )
    );
  }
}