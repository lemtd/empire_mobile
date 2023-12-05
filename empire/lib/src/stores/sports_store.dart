import 'package:empire/src/repositories/sports_repository.dart';
import 'package:empire/src/states/sports_state.dart';

class SportsStore {
  final SportsState _state;
  final SportsRepository _repository;

  SportsStore(this._state, this._repository);

  Future<void> fetchSports() async {
    _state.setLoading(true);

    try {
      await _repository.fetchSports();
    } catch (e) {
      print("Failed to load data");
    } finally {
      _state.setLoading(false);
    }
  }
}
