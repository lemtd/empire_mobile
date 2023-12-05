import 'package:empire/src/repositories/won_bet_repository.dart';

class WonBetStore {
  final WonBetRepository _repository;

  WonBetStore(this._repository);

  Future<void> fetchWonBets() async {
    try {
      await _repository.fetchWonBets();
    } catch (e) {
      print("Failed to load data: $e");
    }
  }
}
