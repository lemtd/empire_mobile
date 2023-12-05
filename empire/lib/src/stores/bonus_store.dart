import 'package:empire/src/repositories/bonus_repository.dart';
import 'package:empire/src/states/bonus_state.dart';

class BonusStore {
  final BonusState _state;
  final BonusRepository _repository;

  BonusStore(this._state, this._repository);

  Future<void> fetchBonus() async {
    _state.setLoading(true);

    try {
      await _repository.fetchBonus();
    } catch (e) {
      print("Failed to load data: $e");
    } finally {
      _state.setLoading(false);
    }
  }
}
