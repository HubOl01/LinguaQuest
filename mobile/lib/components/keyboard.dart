import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../pages/games/gamesPage.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onKeyTapped;
  final VoidCallback onDeleteTapped;
  final VoidCallback onEnterTapped;
  final Set<Letter> letters;

  const Keyboard(
      {super.key,
      required this.onKeyTapped,
      required this.onDeleteTapped,
      required this.onEnterTapped,
      required this.letters});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: keyboard
          .map((keyRow) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: keyRow.map((letter) {
                  if (letter == "DEL") {
                    return _KeyboardButton.delete(onTap: onDeleteTapped);
                  } else if (letter == "ENTER") {
                    return _KeyboardButton.enter(onTap: onEnterTapped);
                  }
                  final letterKey = letters.firstWhere((e) => e.val == letter,
                      orElse: () => Letter.empty());
                  return _KeyboardButton(
                      onTap: () => onKeyTapped(letter),
                      backgroundColor: letterKey != Letter.empty()
                          ? letterKey.backgroundColor
                          : Colors.grey,
                      letter: letter);
                }).toList(),
              ))
          .toList(),
    );
  }
}

List<List<String>> keyboard = [
  ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
  ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
  ["ENTER", "Z", "X", "C", "V", "B", "N", "M", "DEL"]
];

class _KeyboardButton extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onTap;
  final Color backgroundColor;
  final String letter;
  const _KeyboardButton(
      {super.key,
      this.height = 48,
      this.width = 30,
      required this.onTap,
      required this.backgroundColor,
      required this.letter});

  factory _KeyboardButton.delete({required VoidCallback onTap}) =>
      _KeyboardButton(
        width: 56,
        onTap: onTap,
        backgroundColor: Colors.grey,
        letter: "DEL",
      );
  factory _KeyboardButton.enter({required VoidCallback onTap}) =>
      _KeyboardButton(
        width: 56,
        onTap: onTap,
        backgroundColor: Colors.grey,
        letter: "ENTER",
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 2,
      ),
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: height,
            width: width,
            child: Text(
              letter,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
