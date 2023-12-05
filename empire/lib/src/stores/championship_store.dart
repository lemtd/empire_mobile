

import 'package:empire/src/repositories/championship_repository.dart';
import 'package:empire/src/states/championship_state.dart';

class ChampionshipStore {
  final ChampionshipState _state;
  final ChampionshipRepository _repository;

  ChampionshipStore(this._state, this._repository);

  Future<void> fetchChampionships() async {
    _state.setLoading(true);

    try {
      await _repository.fetchChampionships();
    } catch (e) {
      print("Failed to load data $e");
    } finally {
      _state.setLoading(false);
    }
  }
}
