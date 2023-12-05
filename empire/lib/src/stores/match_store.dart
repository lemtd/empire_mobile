import 'package:empire/src/models/match_model.dart';
import 'package:empire/src/repositories/match_repository.dart';
import 'package:empire/src/states/match_state.dart';

class MatchStore {
  final MatchState _state;
  final MatchRepository _repository;

  MatchStore(this._state, this._repository);

  Future<bool> fetchMatches() async {
    _state.setLoading(true);

    try {
      final List<MatchModel> matches = await _repository.fetchMatches();
      if (matches.isNotEmpty) {
        return true;
      }
      return false;
    } catch (e) {
      print("Failed to load data: $e");
      return false;
    } finally {
      _state.setLoading(false);
    }
  }
}
