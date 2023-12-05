import 'package:empire/src/models/championship_model.dart';
import 'package:empire/src/repositories/championship_repository.dart';

class ChampionshipService {
  final ChampionshipRepository _repository;

  ChampionshipService({required ChampionshipRepository repository}) : _repository = repository;

  Future<List<ChampionshipModel>> getChampionships() async {
    return _repository.fetchChampionships();
  }
}