import 'package:empire/src/models/sports_model.dart';
import 'package:empire/src/repositories/sports_repository.dart';

class SportsService {
  final SportsRepository _repository;

  SportsService({required SportsRepository repository}) : _repository = repository;

  Future<List<SportsModel>> getSports() async {
    return _repository.fetchSports();
  }
}