import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String keyLogged = 'isLogged';
  final String username = 'username';
  final String password = 'password';

  Future<void> login(String user, String pw) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyLogged, true);
    await prefs.setString(username, user);
    await prefs.setString(password, pw);
  }

  Future<bool> isLogged() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyLogged) ?? false;
  }

  Future<String> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(username) ?? '';
  }
}