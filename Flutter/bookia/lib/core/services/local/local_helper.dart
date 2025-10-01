import 'dart:convert';

import 'package:bookia/feature/auth/data/models/auth_response/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences pref;

  static const String kUserData = 'userData';

  static init() async {
    pref = await SharedPreferences.getInstance();
  }

  static saveUserData(UserModel? model) {
    if (model == null) return;
    // to parse object to json
    var json = model.toJson();
    // to parse map to string use (jsonEncode) from dart:convert
    var jsonToString = jsonEncode(json);
    // save data
    saveData(kUserData, jsonToString);
  }

  // model ==> json ==> string
  // string ==> json ==> model

  static UserModel? getUserData() {
    String? stringData = getData(kUserData);
    // if user data is null
    if (stringData == null) return null;
    // parse string to json
    var stringToJson = jsonDecode(stringData);
    // parse json to model
    return UserModel.fromJson(stringToJson);
  }

  static saveData(String key, dynamic value) {
    if (value is int) {
      pref.setInt(key, value);
    } else if (value is String) {
      pref.setString(key, value);
    } else if (value is bool) {
      pref.setBool(key, value);
    } else if (value is double) {
      pref.setDouble(key, value);
    } else if (value is List<String>) {
      pref.setStringList(key, value);
    }
  }

  static dynamic getData(String key) {
    return pref.get(key);
  }

  static remove(String key) async {
    await pref.remove(key);
  }
}
