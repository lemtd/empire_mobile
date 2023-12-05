import 'package:empire/src/models/sports_model.dart';
import 'package:empire/src/repositories/sports_repository.dart';
import 'package:empire/src/states/sports_state.dart';

class SportsStore {
  final SportsState _state;
  final SportsRepository _repository;

  SportsStore(this._state, this._repository);

  Future<bool> fetchSports() async {
    _state.setLoading(true);

    try {
      final List<SportsModel> sports = await _repository.fetchSports();
      if (sports.isNotEmpty) {
        return true;
      }
      return false;
    } catch (e) {
      print("Failed to load data");
      return false;
    } finally {
      _state.setLoading(false);
    }
  }
}
