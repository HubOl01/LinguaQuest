class DictionaryModel {
  int? idDictionary;
  String content;
  String translate;
  String? transcription;
  String? audiofile;
  String? example;
  int userId;
  DateTime dateCreated;

  DictionaryModel({
    this.idDictionary,
    required this.content,
    required this.translate,
    this.transcription,
    this.audiofile,
    this.example,
    required this.userId,
    required this.dateCreated,
  });


  Map<String, dynamic> toMap() {
    return {
      'idDictionary': idDictionary,
      'content': content,
      'translate': translate,
      'transcription': transcription,
      'audiofile': audiofile,
      'example': example,
      'userId': userId,
      'date_created': dateCreated.toIso8601String(),
    };
  }

  factory DictionaryModel.fromMap(Map<String, dynamic> map) {
    return DictionaryModel(
      idDictionary: map['idDictionary'],
      content: map['content'],
      translate: map['translate'],
      transcription: map['transcription'],
      audiofile: map['audiofile'],
      example: map['example'],
      userId: map['userId'],
      dateCreated: DateTime.parse(map['date_created']),
    );
  }
}