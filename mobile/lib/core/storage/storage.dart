import 'package:hive/hive.dart';

const String storageName = "Friends";

bool isShowOnboarding = true;
Future showOnboarding(bool isShowOnboarding) async {
  var box = await Hive.openBox(storageName);
  box.put("isShowOnboarding", isShowOnboarding);
  await box.compact();
  await box.close();
}

bool isPremium = false;
Future showPremium(bool isPremium) async {
  var box = await Hive.openBox(storageName);
  box.put("isPremium", isPremium);
  await box.compact();
  await box.close();
}
