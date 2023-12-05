import 'package:empire/locator.dart';
import 'package:empire/modules/authentication/authentication_controller.dart';
import 'package:empire/src/repositories/login_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginStore {
  final LoginRepository _repository;

  LoginStore(this._repository);

  Future<bool> loginUser() async {
    final authenticationController = getIt<AuthenticationController>();

    try {
      final response = await _repository.loginUser(authenticationController.email.text, authenticationController.password.text);
      await _saveUserData(authenticationController.email.text, authenticationController.password.text);
      await _saveTokens(response.authToken, response.refreshToken);
      return true;
    } catch (e) {
      print("Login failed: $e");
      return false;
    }
  }

  Future<void> _saveTokens(String authToken, String refreshToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('auth_token', authToken);
    await prefs.setString('refresh_token', refreshToken);
  }

  Future<void> _saveUserData(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('user_email', email);
    await prefs.setString('user_password', password);
  }

  Future<String> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token') ?? '';
  }

  Future<String> getRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('refresh_token') ?? '';
  }

  Future<String> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_email') ?? '';
  }

  Future<String> getUserPassword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_password') ?? '';
  }
}
