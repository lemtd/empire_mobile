import 'package:empire/src/repositories/match_repository.dart';
import 'package:empire/src/states/match_state.dart';

class MatchStore {
  final MatchState _state;
  final MatchRepository _repository;

  MatchStore(this._state, this._repository);

  Future<void> fetchMatches() async {
    _state.setLoading(true);

    try {
      await _repository.fetchMatches();
    } catch (e) {
      print("Failed to load data: $e");
    } finally {
      _state.setLoading(false);
    }
  }
}
