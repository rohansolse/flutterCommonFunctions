// import 'package:bhsf_provider/service_registration/dependency_injection.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LocalDb {
//   static Future<bool> setString(
//       {required String key, required String value}) async {
//     return await locator<SharedPreferences>().setString(key, value);
//   }

//   static Future<bool> setInt({required String key, required int value}) async {
//     return await locator<SharedPreferences>().setInt(key, value);
//   }

//   static Future<bool> setBool(
//       {required String key, required bool value}) async {
//     return await locator<SharedPreferences>().setBool(key, value);
//   }

//   static Future<bool> setStringList(
//       {required String key, required List<String> value}) async {
//     return await locator<SharedPreferences>().setStringList(key, value);
//   }

//   static List<String> getStringList({
//     required String key,
//   }) {
//     return locator<SharedPreferences>().getStringList(key) ?? [];
//   }

//   static String? getString({
//     required String key,
//   }) {
//     return locator<SharedPreferences>().getString(key) ?? "";
//   }

//   static int getInt({
//     required String key,
//   }) {
//     return locator<SharedPreferences>().getInt(key) ?? 0;
//   }

//   static bool getBool({
//     required String key,
//   }) {
//     return locator<SharedPreferences>().getBool(key) ?? false;
//   }

//   static removeAllPreference() async {
//     locator<SharedPreferences>().remove(userData);
//     locator<SharedPreferences>().remove(accessToken);
//     locator<SharedPreferences>().remove(serverPath);
//     locator<SharedPreferences>().remove(localPath);
//     locator<SharedPreferences>().remove(userLogin);
//     locator<SharedPreferences>().remove(idToken);
//     locator<SharedPreferences>().remove(refreshToken);
//     locator<SharedPreferences>().remove(refreshTokenCounter);
//   }

//   static String userOnboarded = 'userOnboarded';
//   static String userData = 'userData';
//   static String userLogin = 'userLogin';
//   static String accessToken = 'accessToken';
//   static String idToken = 'idToken';
//   static String serverPath = 'serverPath';
//   static String localPath = 'localPath';
//   static String refreshToken = 'refreshToken';
//   static String refreshTokenCounter = 'refreshTokenCounter';
// }
