import 'package:empire/src/repositories/bonus_repository.dart';

class BonusStore {
  final BonusRepository _repository;

  BonusStore(this._repository);

  Future<void> fetchBonus() async {
    try {
      await _repository.fetchBonus();
    } catch (e) {
      print("Failed to load data: $e");
    }
  }
}
