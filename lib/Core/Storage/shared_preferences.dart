import 'dart:convert';




import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static String userDetails = "userstore";

  static String tokenSave = "token";
  static String secret_key = "secret_key";

  SharedPreferences? _prefs;

  //  LoginModel? _user;
     //Models Name
  static String isLogin = "isLogin";
  static String isLoginChose = "isLoginChose";
  static String workerName = "workerName";
  static String workerMeetingId = "workerMeetingId";
  static String workerId = "workerId";



  static String languageCode = "language_code";

  static String language = "language";

  SharedPreferences? get prefs => _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();

    var user = await read(userDetails);

    if (user != null && user is Map<String, dynamic>) {
      // _user = LoginModel.fromJson(user);  Add User  Models Data
    }
  }

  read(String key) {
    final value = _prefs?.getString(key);

    if (value != null) return json.decode(value);

    return null;
  }

  save(String key, value) async {


    await _prefs?.setString(key, json.encode(value));

    if (key == userDetails) {
      await init();
    }
  }

  saveBool(String key, bool value) async {
    _prefs?.setBool(key, value);
  }

  readBool(String key) async {
    bool? boolValue = _prefs?.getBool(key);

    if (boolValue != null) return boolValue;

    return false;
  }

  remove(String key) async {
    await _prefs?.remove(key);
  }

  preferenceClear() async {
    await _prefs?.clear();
  }

  // LoginModel? get user => _user;
}
