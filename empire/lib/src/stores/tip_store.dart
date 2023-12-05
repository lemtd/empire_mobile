import 'package:empire/src/repositories/tip_repository.dart';

class TipStore {
  final TipRepository _repository;

  TipStore(this._repository);

  Future<void> fetchTips() async {
    try {
      await _repository.fetchTips();
    } catch (e) {
      print("Failed to load data: $e");
    }
  }
}
