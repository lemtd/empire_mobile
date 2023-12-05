import 'package:empire/src/repositories/won_bet_repository.dart';
import 'package:empire/src/states/won_bet_state.dart';

class WonBetStore {
  final WonBetState _state;
  final WonBetRepository _repository;

  WonBetStore(this._state, this._repository);

  Future<void> fetchWonBets() async {
    _state.setLoading(true);

    try {
      await _repository.fetchWonBets();
    } catch (e) {
      print("Failed to load data: $e");
    } finally {
      _state.setLoading(false);
    }
  }
}
