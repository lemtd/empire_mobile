import 'package:empire/src/models/match_model.dart';
import 'package:empire/src/repositories/match_repository.dart';

class MatchService {
  final MatchRepository _repository;

  MatchService({required MatchRepository repository}) : _repository = repository;

  Future<List<MatchModel>> getMatches() async {
    return _repository.fetchMatches();
  }
}