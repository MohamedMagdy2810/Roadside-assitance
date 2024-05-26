import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}


class userManager {
  static Future<void> saveName(String first_name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('fname', first_name);
  }

  static Future<String?> getName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('fname');
  }

  static Future<void> removeName() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('fname');
  }
}
