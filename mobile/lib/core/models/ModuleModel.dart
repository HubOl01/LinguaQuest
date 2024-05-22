// To parse this JSON data, do
//
//     final moduleModel = moduleModelFromJson(jsonString);
import 'dart:convert';

List<ModuleModel> moduleModelFromJson(String str) => List<ModuleModel>.from(
    json.decode(str).map((x) => ModuleModel.fromJson(x)));

String moduleModelToJson(List<ModuleModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModuleModel {
  final String titleModule;
  final String descriptionModule;
  final List<Lesson> lessons;

  ModuleModel({
    required this.titleModule,
    required this.descriptionModule,
    required this.lessons,
  });

  factory ModuleModel.fromJson(Map<String, dynamic> json) => ModuleModel(
        titleModule: json["title_module"],
        descriptionModule: json["description_module"],
        lessons:
            List<Lesson>.from(json["lessons"].map((x) => Lesson.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title_module": titleModule,
        "description_module": descriptionModule,
        "lessons": List<dynamic>.from(lessons.map((x) => x.toJson())),
      };
}

class Lesson {
  final String titleLesson;
  final String descriptionLesson;
  final String rule;
  final List<Quiz> quizzes;

  Lesson({
    required this.titleLesson,
    required this.descriptionLesson,
    required this.rule,
    required this.quizzes,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        titleLesson: json["title_lesson"],
        descriptionLesson: json["description_lesson"],
        rule: json["rule"],
        quizzes: List<Quiz>.from(
            json["quizzes"].map((x) => Quiz.fromJson(x)) ?? null),
      );

  Map<String, dynamic> toJson() => {
        "title_lesson": titleLesson,
        "description_lesson": descriptionLesson,
        "rule": rule,
        "quizzes": List<dynamic>.from(quizzes.map((x) => x.toJson())),
      };
}

class Quiz {
  final Type type;
  final String question;
  final String urlImage;
  final String answerCorrect;
  final List<String> answers;
  final List<String> words;
  final String explanation;

  Quiz({
    required this.type,
    required this.question,
    required this.urlImage,
    required this.answerCorrect,
    required this.answers,
    required this.words,
    required this.explanation,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
        type: typeValues.map[json["type"]]!,
        question: json["question"],
        urlImage: json["url_image"],
        answerCorrect: json["answer_correct"],
        answers:
            json['answers'] != null ? List<String>.from(json['answers']) : [],
        words: json['words'] != null ? List<String>.from(json['words']) : [],
        explanation: json["explanation"],
      );

  Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "question": question,
        "url_image": urlImage,
        "answer_correct": answerCorrect,
        "answers": List<dynamic>.from(answers.map((x) => x)),
        "words": List<dynamic>.from(words.map((x) => x)),
        "explanation": explanation,
      };
}

enum Type { IMAGE, MISSING, SENTENCE, TRANSLATE }

final typeValues = EnumValues({
  "image": Type.IMAGE,
  "missing": Type.MISSING,
  "sentence": Type.SENTENCE,
  "translate": Type.TRANSLATE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
