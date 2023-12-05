import 'package:empire/src/stores/championship_store.dart';
import 'package:empire/src/stores/match_store.dart';
import 'package:empire/src/stores/sports_store.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final MatchStore matchStore;
  final SportsStore sportsStore;
  final ChampionshipStore championshipStore;
  
  _AppControllerBase(this.matchStore, this.sportsStore, this.championshipStore);

  Future<void> init() async {
    await matchStore.fetchMatches();
    await sportsStore.fetchSports();
    await championshipStore.fetchChampionships();
  }

  // @action
  // void changeValue() {
  //   isObscure = !isObscure;
  // }
}