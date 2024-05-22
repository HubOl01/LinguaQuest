import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../../components/board.dart';
import '../../components/keyboard.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  GameStatus _gameStatus = GameStatus.playing;
  final List<Word> _board = List.generate(
      6, (_) => Word(letters: List.generate(5, (_) => Letter.empty())));

  final List<List<GlobalKey<FlipCardState>>> _flipCardKeys = List.generate(
      6, (_) => List.generate(5, (_) => GlobalKey<FlipCardState>()));
  Word _solution = Word.fromString(
      fiveLetterWords[Random().nextInt(fiveLetterWords.length)].toUpperCase());

  int _currentWordIndex = 0;
  Word? get _currentWord =>
      _currentWordIndex < _board.length ? _board[_currentWordIndex] : null;

  final Set<Letter> _keyboardLetters = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Board(board: _board, flipCardKeys: _flipCardKeys),
          const SizedBox(
            height: 80,
          ),
          Keyboard(
              onKeyTapped: _onKeyTapped,
              onDeleteTapped: _onDeleteTapped,
              onEnterTapped: _onEnterTapped,
              letters: _keyboardLetters)
        ],
      ),
    );
  }

  void _onKeyTapped(String val) {
    if (_gameStatus == GameStatus.playing) {
      setState(() => _currentWord?.addLetter(val));
    }
  }

  void _onDeleteTapped() {
    if (_gameStatus == GameStatus.playing) {
      setState(() => _currentWord?.removeLetter());
    }
  }

  Future<void> _onEnterTapped() async {
    if (_gameStatus == GameStatus.playing &&
        _currentWord != null &&
        !_currentWord!.letters.contains(Letter.empty())) {
      _gameStatus = GameStatus.submitting;

      for (var i = 0; i < _currentWord!.letters.length; i++) {
        final currentWordLetter = _currentWord!.letters[i];
        final currentSolutionLetter = _solution.letters[i];

        setState(() {
          if (currentWordLetter == currentSolutionLetter) {
            _currentWord!.letters[i] =
                currentWordLetter.copyWith(status: LetterStatus.correct);
          } else if (_solution.letters.contains(currentWordLetter)) {
            _currentWord!.letters[i] =
                currentWordLetter.copyWith(status: LetterStatus.inWord);
          } else {
            _currentWord!.letters[i] =
                currentWordLetter.copyWith(status: LetterStatus.notInWord);
          }
        });
        final letter = _keyboardLetters.firstWhere(
            (e) => e.val == currentWordLetter.val,
            orElse: () => Letter.empty());
        if (letter.status != LetterStatus.correct) {
          _keyboardLetters.removeWhere((e) => e.val == currentWordLetter.val);
          _keyboardLetters.add(_currentWord!.letters[i]);
        }
        await Future.delayed(
            const Duration(milliseconds: 150),
            () =>
                _flipCardKeys[_currentWordIndex][i].currentState?.toggleCard());
      }
      _checkIfWinOrLoss();
    }
  }

  void _checkIfWinOrLoss() {
    if (_currentWord!.wordString == _solution.wordString) {
      _gameStatus = GameStatus.won;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          dismissDirection: DismissDirection.none,
          duration: const Duration(days: 1),
          backgroundColor: ColorsWordle.correctColor,
          action: SnackBarAction(label: "New Game", onPressed: _restart),
          content: Text(
            'You won!',
            style: TextStyle(color: Colors.white),
          )));
    } else if (_currentWordIndex + 1 >= _board.length) {
      _gameStatus = GameStatus.lost;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          dismissDirection: DismissDirection.none,
          duration: const Duration(days: 1),
          backgroundColor: Colors.redAccent[200],
          action: SnackBarAction(label: "New Game", onPressed: _restart),
          content: Text(
            'You lost!',
            style: TextStyle(color: Colors.white),
          )));
    } else {
      _gameStatus = GameStatus.playing;
    }
    _currentWordIndex += 1;
  }

  void _restart() {
    setState(() {
      _gameStatus = GameStatus.playing;
      _currentWordIndex = 0;
      _board
        ..clear()
        ..addAll(List.generate(
            6, (_) => Word(letters: List.generate(5, (_) => Letter.empty()))));
      _solution = Word.fromString(
          fiveLetterWords[Random().nextInt(fiveLetterWords.length)]
              .toUpperCase());
      _flipCardKeys
        ..clear()
        ..addAll(List.generate(
            6, (_) => List.generate(5, (_) => GlobalKey<FlipCardState>())));
      _keyboardLetters.clear();
    });
  }
}

class ColorsWordle {
  static Color correctColor = Colors.green;
  static Color inWordColor = Colors.amber;
  static Color notInWordColor = Colors.black54;
}

enum LetterStatus { initial, notInWord, inWord, correct }

class Letter extends Equatable {
  final String val;
  final LetterStatus? status;
  const Letter({required this.val, this.status = LetterStatus.initial});

  Letter copyWith({String? val, LetterStatus? status}) {
    return Letter(val: val ?? this.val, status: status ?? this.status);
  }

  @override
  List<Object?> get props => [val, status];
  factory Letter.empty() => const Letter(val: '');
  Color get backgroundColor {
    switch (status) {
      case LetterStatus.notInWord:
        return ColorsWordle.notInWordColor;
      case LetterStatus.inWord:
        return ColorsWordle.inWordColor;
      case LetterStatus.correct:
        return ColorsWordle.correctColor;
      default:
        return Colors.transparent;
    }
  }

  Color get borderColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.grey;
      default:
        return Colors.transparent;
    }
  }
}

class Word extends Equatable {
  final List<Letter> letters;
  const Word({required this.letters});

  factory Word.fromString(String word) =>
      Word(letters: word.split('').map((e) => Letter(val: e)).toList());
  String get wordString => letters.map((e) => e.val).join();

  void addLetter(String val) {
    final currentIndex = letters.indexWhere((e) => e.val.isEmpty);
    if (currentIndex == -1) {
      letters[currentIndex] = Letter(val: val);
    }
  }

  void removeLetter() {
    final recentLetterIndex = letters.lastIndexWhere((e) => e.val.isNotEmpty);
    if (recentLetterIndex != -1) {
      letters[recentLetterIndex] = Letter.empty();
    }
  }

  @override
  List<Object?> get props => [letters];
}

enum GameStatus { playing, submitting, lost, won }

List<String> fiveLetterWords = [
  "apple",
  "bread",
  "chair",
  "dream",
  "eagle",
  "flame",
  "grape",
  "house",
  "image",
  "jelly",
  "knife",
  "lemon",
  "mouse",
  "noble",
  "ocean",
  "pearl",
  "quiet",
  "raven",
  "snake",
  "table",
  "unite",
  "vivid",
  "waste",
  "xenon",
  "yacht",
  "zebra",
  "alert",
  "brave",
  "chess",
  "delta",
  "eager",
  "frost",
  "globe",
  "happy",
  "index",
  "judge",
  "kitty",
  "leaky",
  "magic",
  "ninja",
  "oasis",
  "pilot",
  "queen",
  "radio",
  "silly",
  "tiger",
  "ultra",
  "viper",
  "whale",
  "xylos",
  "youth",
  "zippy",
  "adopt",
  "bacon",
  "cabin",
  "dance",
  "equal",
  "faith",
  "giant",
  "hound",
  "ivory",
  "jolly",
  "kneel",
  "logic",
  "music",
  "north",
  "orbit",
  "piano",
  "quilt",
  "ranch",
  "sauce",
  "trust",
  "umbra",
  "visit",
  "water",
  "xerox",
  "yield",
  "zonal",
  "amber",
  "basil",
  "cargo",
  "doubt",
  "elbow",
  "froze",
  "guild",
  "hiker",
  "irony",
  "jewel",
  "kayak",
  "lunar",
  "moist",
  "novel",
  "otter",
  "proud",
  "query"
];
