import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Hello, World!'),
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        child: Icon(Icons.star, color: Colors.white, size: 30),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center( 
        child: Image.asset('assets/flutter-logo-icon.png', height: 300)
      ),
    );
  }
}