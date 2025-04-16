import 'package:flutter/material.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true, textAlign: TextAlign.justify),
    );
  }
}