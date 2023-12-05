import 'dart:convert';
import 'package:empire/src/models/match_model.dart';
import 'package:http/http.dart' as http;

class MatchRepository {
  Future<List<MatchModel>> fetchMatches() async {
    final url = Uri.parse('https://6569cc7dde53105b0dd7af5c.mockapi.io/matches');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => MatchModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
