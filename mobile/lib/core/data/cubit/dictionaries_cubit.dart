import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/dictionaryModel.dart';
import '../DBdictionary.dart';

part 'dictionaries_state.dart';

class DictionariesCubit extends Cubit<List<DictionaryModel>> {
  final DBDictionary dbDictionary;
  DictionariesCubit(this.dbDictionary) : super([]);

  Future<void> fetchDictionaries() async {
    final dictionaries = await dbDictionary.getDictionaries();
    emit(dictionaries);
  }

  Future<void> addDictionary(DictionaryModel dictionary) async {
    await dbDictionary.insertDictionary(dictionary);
    fetchDictionaries();
  }

  Future<void> updateDictionary(DictionaryModel dictionary) async {
    await dbDictionary.updateDictionary(dictionary);
    fetchDictionaries();
  }

  Future<void> deleteDictionary(int idDictionary) async {
    await dbDictionary.deleteDictionary(idDictionary);
    fetchDictionaries();
  }
}
