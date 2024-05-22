import 'package:flutter/material.dart';

import '../pages/games/gamesPage.dart';

class BoardTile extends StatelessWidget {
  final Letter letter;
  const BoardTile({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 48,
      width: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: letter.backgroundColor,
          border: Border.all(color: letter.borderColor),
          borderRadius: BorderRadius.circular(4)),
      child: Text(
        letter.val,
        style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }
}
