import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_screen.dart';

void main() => runApp(const Exercicio());

class Exercicio extends StatelessWidget {
  const Exercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const Login(title: 'Login Page'),
    );
  }
}
