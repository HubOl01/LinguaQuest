import 'package:LinguaQuest/core/models/ModuleModel.dart';
import 'package:flutter/services.dart';

Future<List<ModuleModel>> fetchModules() async {
  final String response =
      await rootBundle.loadString('assets/dataModules.json');
      print("moduleModelFromJson: ${moduleModelFromJson(response).first.titleModule}");
  return moduleModelFromJson(response);
}
