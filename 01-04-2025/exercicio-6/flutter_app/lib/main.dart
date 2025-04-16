import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/album_sections/album_cover_section.dart';
import 'package:flutter_app/widgets/album_sections/controls_section.dart';
import 'package:flutter_app/widgets/album_sections/information_section.dart';
import 'package:flutter_app/widgets/album_sections/presentation_section.dart';

void main() => runApp(const Exercicio());

class Exercicio extends StatelessWidget {
  const Exercicio({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Album Information";

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              AlbumCoverSection(image: "assets/album_cover.jpeg"),
              PresentationSection(album: "There's Nothing Left To Lose", artistName: "Foo Fighters"),
              ControlsSection(),
              InformationSection(description:
                  "There Is Nothing Left to Lose is the third studio album by American rock band Foo Fighters, released on November 2, 1999, through Roswell and RCA Records. "
                  "It marked the first studio credit for drummer Taylor Hawkins, and is often seen as a departure from the band's previous work, "
                  "showcasing a softer, more experimental sound. Vocalist and guitarist Dave Grohl has called it his favorite Foo Fighters album, " 
                  "stating that it was \"totally based on melody\" and that the recording process was a serene experience. "
                  "The album was recorded using only three musicians; Grohl, Hawkins, and bassist Nate Mendel in the basement of Grohl's home in Alexandria, Virginia."
              ),
            ],
          ),
        ),
      ),
    );
  }
}