import 'package:flutter/material.dart';

class AlbumCoverSection extends StatelessWidget {
  const AlbumCoverSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 300, fit: BoxFit.cover);
  }
}