import 'package:empire/src/models/bonus_model.dart';
import 'package:empire/src/repositories/bonus_repository.dart';

class BonusService {
  final BonusRepository _repository;

  BonusService({required BonusRepository repository}) : _repository = repository;

  Future<List<BonusModel>> getBonus() async {
    return _repository.fetchBonus();
  }
}