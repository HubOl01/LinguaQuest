// To parse this JSON data, do
//
//     final word = wordFromJson(jsonString);

import 'dart:convert';

List<WordModel> wordFromJson(String str) => List<WordModel>.from(json.decode(str).map((x) => WordModel.fromJson(x)));

String wordToJson(List<WordModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WordModel {
    final String content;
    final String translate;
    final String transcription;
    final String examples;

    WordModel({
        required this.content,
        required this.translate,
        required this.transcription,
        required this.examples,
    });

    WordModel copyWith({
        String? content,
        String? translate,
        String? transcription,
        String? examples,
    }) => 
        WordModel(
            content: content ?? this.content,
            translate: translate ?? this.translate,
            transcription: transcription ?? this.transcription,
            examples: examples ?? this.examples,
        );

    factory WordModel.fromJson(Map<String, dynamic> json) => WordModel(
        content: json["content"],
        translate: json["translate"],
        transcription: json["transcription"],
        examples: json["examples"],
    );

    Map<String, dynamic> toJson() => {
        "content": content,
        "translate": translate,
        "transcription": transcription,
        "examples": examples,
    };
}
