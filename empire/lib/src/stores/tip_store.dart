import 'package:empire/src/repositories/tip_repository.dart';
import 'package:empire/src/states/tip_state.dart';

class TipStore {
  final TipState _state;
  final TipRepository _repository;

  TipStore(this._state, this._repository);

  Future<void> fetchTips() async {
    _state.setLoading(true);

    try {
      await _repository.fetchTips();
    } catch (e) {
      print("Failed to load data: $e");
    } finally {
      _state.setLoading(false);
    }
  }
}
