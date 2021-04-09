import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesHelper {
  // key - value
  SharePreferencesHelper();

  static final String KEY_ISLOGIN = 'KEY ISLOGIN';
  static final String KEY_USERNAME = 'KEY USERNAME';
  static final String KEY_PASSWORD = 'KEY PASSWORD';
  static final String KEY_ISREMEMBER = 'KEY ISREMEMBER';

  static Future<SharedPreferences> get sharedpreferences =>
      SharedPreferences.getInstance();

  static Future saveIsLogin(bool islogin) async {
    final pref = await sharedpreferences;
    return pref.setBool(KEY_ISLOGIN, islogin);
  }

  static Future<bool> readIsLogin() async {
    final pref = await sharedpreferences;
    return pref.getBool(KEY_ISLOGIN) ?? false;
  }

  //untuk simpan username
  static Future saveUserName(String username) async {
    final pref = await sharedpreferences;
    return pref.setString(KEY_USERNAME, username);
  }

  //panggil username
  static Future<String> readUsername() async {
    final pref = await sharedpreferences;
    return pref.getString(KEY_USERNAME) ?? '';
  }

//untuk simpan pass
  static Future savePassword(String password) async {
    final pref = await sharedpreferences;
    return pref.setString(KEY_PASSWORD, password);
  }

//untuk panggil password
  static Future<String> readPassword() async {
    final pref = await sharedpreferences;
    return pref.getString(KEY_PASSWORD) ?? '';
  }

  //untuk save flag(truefalse) isremember
  static Future saveIsRemember(bool isremember) async {
    final pref = await sharedpreferences;
    return pref.setBool(KEY_ISREMEMBER, isremember);
  }

  static Future<bool> readIsRemember() async {
    final pref = await sharedpreferences;
    return pref.getBool(KEY_ISREMEMBER) ?? false;
  }

  //clear semua data yg disimpan
  static Future clearALLData() async {
    final pref = await sharedpreferences;
    await Future.wait(<Future>[
      pref.setBool(KEY_ISLOGIN, false),
      pref.setString(KEY_USERNAME, ''),
      pref.setString(KEY_PASSWORD, '')
    ]);
  }
}
