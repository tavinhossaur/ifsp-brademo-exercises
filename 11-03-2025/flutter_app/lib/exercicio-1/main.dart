import 'package:flutter/material.dart';

void main() => runApp(const Exercicio1());

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const Exercicio1HomePage(title: 'Flutter is Fun!'),
    );
  }
}

class Exercicio1HomePage extends StatelessWidget {
  const Exercicio1HomePage({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.only(left: 100, top: 100),
        padding: EdgeInsets.all(10),
        color: Colors.red,
        child: Text("Hi Mom 🐣"),
      ),
    );
  }
}
