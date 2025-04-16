import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/grid_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: const [
              GridCard(imagePath: 'assets/image1.jpeg', albumName: "There's Nothing Left To Lose", artist: 'Foo Fighters'),
              GridCard(imagePath: 'assets/image2.jpg', albumName: "Post Traumatic", artist: 'Mike Shinoda'),
              GridCard(imagePath: 'assets/image3.jpg', albumName: "Dookie", artist: 'Green Day'),
              GridCard(imagePath: 'assets/image4.jpg', albumName: "That's The Spirit", artist: 'Bring Me The Horizon'),
              GridCard(imagePath: 'assets/image5.png', albumName: "From Zero", artist: 'Linkin Park'),
              GridCard(imagePath: 'assets/image6.jpg', albumName: "All Killer, No Filler", artist: 'Sum 41'),
              GridCard(imagePath: 'assets/image7.jpg', albumName: "Three Cheers for Sweet Revenge", artist: 'My Chemical Romance'),
              GridCard(imagePath: 'assets/image8.jpg', albumName: "Take Off Your Pants And Jacket", artist: 'blink-182'),
            ],
          ),
        ),
      ),
    );
  }
}