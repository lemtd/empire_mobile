import 'package:empire/src/stores/match_store.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final MatchStore matchStore;
  
  _AppControllerBase(this.matchStore);

  Future<void> initMatch() async {
    await matchStore.fetchMatches();
  }

  // @action
  // void changeValue() {
  //   isObscure = !isObscure;
  // }
}