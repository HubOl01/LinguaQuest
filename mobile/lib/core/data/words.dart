import 'package:flutter/services.dart';

import '../models/word.dart';

Future<List<WordModel>> fetchWords() async {
    final String response = await rootBundle.loadString('assets/dataWords.json');
    return wordFromJson(response);
  }