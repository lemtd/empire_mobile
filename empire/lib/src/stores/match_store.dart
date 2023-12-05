import 'package:empire/src/repositories/match_repository.dart';

class MatchStore {
  final MatchRepository _repository;

  MatchStore(this._repository);

  Future<void> fetchMatches() async {
    try {
      await _repository.fetchMatches();
    } catch (e) {
      print("Failed to load data: $e");
    }
  }
}
