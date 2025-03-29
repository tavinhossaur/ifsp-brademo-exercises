import 'package:flutter/material.dart';
import 'package:flutter_app/models/login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameInput = TextEditingController();
    final TextEditingController passwordInput = TextEditingController();

    void login() {
      final username = usernameInput.text;
      final password = passwordInput.text;

      final login = Login(username: username, password: password);

      login.auth(context);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        SizedBox(
          height: 60,
          width: 300,
          child: TextField(
            controller: usernameInput,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
        ),
        SizedBox(
          height: 60,
          width: 300,
          child: TextField(
            controller: passwordInput,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        Text(
          'Forgot your password?',
          style: TextStyle(fontSize: 18, color: Colors.lightBlue),
        ),
        MaterialButton(
          onPressed: login,
          height: 60,
          minWidth: 300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          color: Colors.blue[800],
          padding: EdgeInsets.all(5),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
