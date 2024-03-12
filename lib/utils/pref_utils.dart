import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';


class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    log('::::::::::::::::::::: SharedPreference Initialized :::::::::::::::::::::');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  String? getString(String key) {
    return _sharedPreferences!.getString(key);
  }

  bool? getBool(String key) {
    return _sharedPreferences!.getBool(key);
  }

  setBool(String key, bool value) async {
    await _sharedPreferences!.setBool(key, value);
  }

  Future<void> setString({required String key, required String value}) async {
    await _sharedPreferences!.setString(key, value);
  }

  removeItem(String key) async {
    await _sharedPreferences!.remove(key);
  }


}
