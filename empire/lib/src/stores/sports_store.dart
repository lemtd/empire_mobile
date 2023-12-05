import 'package:empire/src/repositories/sports_repository.dart';

class SportsStore {
  final SportsRepository _repository;

  SportsStore(this._repository);

  Future<void> fetchSports() async {
    try {
      await _repository.fetchSports();
    } catch (e) {
      print("Failed to load data");
    } 
  }
}
