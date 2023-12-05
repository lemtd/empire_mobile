import 'dart:convert';
import 'package:empire/src/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  Future<LoginModel> loginUser(String email, String password) async {
    final url = Uri.parse('https://6569cc7dde53105b0dd7af5c.mockapi.io/login');

    final response = await http.post(
      url,
      // headers: {'Content-Type': 'application/json'},
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final Map<String, dynamic> data = json.decode(response.body);
      return LoginModel.fromJson(data);
    } else {
      print(
          'Login failed. Status: ${response.statusCode}, Body: ${response.body}');
      throw Exception('Login failed');
    }
  }
}
