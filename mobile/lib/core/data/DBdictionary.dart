import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/dictionaryModel.dart';

class DBDictionary {
  static final DBDictionary _instance = DBDictionary._internal();
  factory DBDictionary() => _instance;
  static Database? _database;

  DBDictionary._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    String path = join(await getDatabasesPath(), 'dictionary.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE dictionary(
        idDictionary INTEGER PRIMARY KEY AUTOINCREMENT,
        content TEXT,
        translate TEXT,
        transcription TEXT,
        audiofile TEXT,
        example TEXT,
        userId INTEGER,
        date_created TEXT
      )
    ''');
  }

  Future<int> insertDictionary(DictionaryModel dictionary) async {
    Database db = await database;
    return await db.insert('dictionary', dictionary.toMap());
  }

  Future<List<DictionaryModel>> getDictionaries() async {
    Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('dictionary');
    return List.generate(maps.length, (i) {
      return DictionaryModel.fromMap(maps[i]);
    });
  }

  Future<int> updateDictionary(DictionaryModel dictionary) async {
    Database db = await database;
    return await db.update(
      'dictionary',
      dictionary.toMap(),
      where: 'idDictionary = ?',
      whereArgs: [dictionary.idDictionary],
    );
  }

  Future<int> deleteDictionary(int idDictionary) async {
    Database db = await database;
    return await db.delete(
      'dictionary',
      where: 'idDictionary = ?',
      whereArgs: [idDictionary],
    );
  }
}
