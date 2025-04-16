import 'package:flutter/material.dart';

class PresentationSection extends StatelessWidget {
  const PresentationSection({
    super.key,
    required this.album,
    required this.artistName,
  });

  final String album;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    album,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(artistName, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          Icon(Icons.favorite, color: Colors.amber[800]),
          const Text(' 982k'),
        ],
      ),
    );
  }
}