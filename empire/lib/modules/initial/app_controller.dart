import 'package:empire/src/stores/tip_store.dart';
import 'package:empire/src/stores/won_bet_store.dart';
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
  final WonBetStore wonBetStore;
  final TipStore tipStore;
  
  _AppControllerBase(this.matchStore, this.sportsStore, this.championshipStore, this.bonusStore, this.wonBetStore, this.tipStore);

  Future<void> init() async {
    await matchStore.fetchMatches();
    await sportsStore.fetchSports();
    await championshipStore.fetchChampionships();
    await bonusStore.fetchBonus();
    await wonBetStore.fetchWonBets();
    await tipStore.fetchTips();
  }

  // @action
  // void changeValue() {
  //   isObscure = !isObscure;
  // }
}