import 'package:empire/src/stores/bonus_store.dart';
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
  final BonusStore bonusStore;
  
  _AppControllerBase(this.matchStore, this.sportsStore, this.championshipStore, this.bonusStore);

  Future<void> init() async {
    await matchStore.fetchMatches();
    await sportsStore.fetchSports();
    await championshipStore.fetchChampionships();
    await bonusStore.fetchBonus();
  }

  // @action
  // void changeValue() {
  //   isObscure = !isObscure;
  // }
}