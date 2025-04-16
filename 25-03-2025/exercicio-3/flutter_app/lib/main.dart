import 'package:flutter/material.dart';
import 'package:flutter_app/screens/tasks_screen.dart';

void main() => runApp(const Exercicio());

class Exercicio extends StatelessWidget {
  const Exercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TaskPage());
  }
}