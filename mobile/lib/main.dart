import 'package:flutter/material.dart';

import 'BottomNavigation.dart';
import 'pages/main/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinguaQuest',
      theme: ThemeData(
      //  scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const ButtomNavigation(),
    );
  }
}
