import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/user_form.dart';

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
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserForm(),
            ],
          )
        ),
      ),
    );
  }

 
}
