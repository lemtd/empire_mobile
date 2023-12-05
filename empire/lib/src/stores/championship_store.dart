

import 'package:empire/src/repositories/championship_repository.dart';

class ChampionshipStore {
  final ChampionshipRepository _repository;

  ChampionshipStore(this._repository);

  Future<void> fetchChampionships() async {
    try {
      await _repository.fetchChampionships();
    } catch (e) {
      print("Failed to load data $e");
    }
  }
}
