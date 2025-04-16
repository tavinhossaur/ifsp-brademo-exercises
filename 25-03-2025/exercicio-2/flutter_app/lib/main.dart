import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';

void main() => runApp(const Exercicio());

class Exercicio extends StatefulWidget {
  const Exercicio({super.key});

  @override
  ExercicioState createState() {
    return ExercicioState();
  }
}

class ExercicioState extends State<Exercicio> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(title: "Exercício 2"),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}
