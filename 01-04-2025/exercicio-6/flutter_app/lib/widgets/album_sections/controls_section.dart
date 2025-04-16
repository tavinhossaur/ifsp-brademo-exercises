import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/buttons/text_button.dart';
import 'package:flutter_app/widgets/buttons/favorite_button.dart';

class ControlsSection extends StatelessWidget {
  const ControlsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color? color = Colors.amber[800];
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.person, label: 'ARTIST'),
          FavoriteButton(color: color),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}