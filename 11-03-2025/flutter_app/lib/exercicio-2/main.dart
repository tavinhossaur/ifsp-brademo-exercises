import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

void main() => runApp(const Exercicio2());

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const Exercicio2HomePage(title: 'My Home Page'),
    );
  }
}

class Exercicio2HomePage extends StatelessWidget {
  const Exercicio2HomePage({super.key, required this.title});

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
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 28, 
                color: Colors.blue[500],
              )
            ),
            SizedBox(
              height: 60, 
              width: 300,
              child: DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [10, 4],
                color: Colors.black38,
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text('SizedBox',
                  style: TextStyle(
                    fontSize: 18, 
                    color: Colors.black38,
                  )
                ),
              )
            ),
            MaterialButton(
              onPressed: () => { print('Hello, World!') },
              height: 50,
              minWidth: 300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              color: Colors.blue[800],
              padding: EdgeInsets.all(5),
              child: Text('A button', 
                style: TextStyle(
                  fontSize: 18, 
                  color: Colors.white,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
