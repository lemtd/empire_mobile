import 'package:empire/modules/authentication/authentication_controller.dart';
import 'package:empire/modules/home/home_controller.dart';
import 'package:empire/modules/initial/app_controller.dart';
import 'package:empire/routes.dart';
import 'package:empire/src/repositories/bonus_repository.dart';
import 'package:empire/src/repositories/championship_repository.dart';
import 'package:empire/src/repositories/login_repository.dart';
import 'package:empire/src/repositories/match_repository.dart';
import 'package:empire/src/repositories/sports_repository.dart';
import 'package:empire/src/repositories/tip_repository.dart';
import 'package:empire/src/repositories/won_bet_repository.dart';
import 'package:empire/src/services/bonus_service.dart';
import 'package:empire/src/services/championship_service.dart';
import 'package:empire/src/services/match_service.dart';
import 'package:empire/src/services/sports_service.dart';
import 'package:empire/src/services/tip_service.dart';
import 'package:empire/src/services/won_bet_service.dart';
import 'package:empire/src/states/bonus_state.dart';
import 'package:empire/src/states/championship_state.dart';
import 'package:empire/src/states/login_state.dart';
import 'package:empire/src/states/match_state.dart';
import 'package:empire/src/states/sports_state.dart';
import 'package:empire/src/states/tip_state.dart';
import 'package:empire/src/states/won_bet_state.dart';
import 'package:empire/src/stores/tip_store.dart';
import 'package:empire/src/stores/won_bet_store.dart';
import 'package:empire/src/stores/bonus_store.dart';
import 'package:empire/src/stores/championship_store.dart';
import 'package:empire/src/stores/login_store.dart';
import 'package:empire/src/stores/match_store.dart';
import 'package:empire/src/stores/sports_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupLocator() {
  getIt.registerLazySingleton<Routes>(() => Routes());
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository());
  getIt.registerLazySingleton<LoginState>(() => LoginState());
  getIt.registerLazySingleton<LoginStore>(() => LoginStore(
        getIt<LoginState>(),
        getIt<LoginRepository>(),
      ));
  getIt.registerLazySingleton<AuthenticationController>(
      () => AuthenticationController(getIt<LoginStore>()));
  getIt.registerLazySingleton<HomeController>(
      () => HomeController(getIt<AppController>(),));
  getIt.registerLazySingleton<MatchService>(() => MatchService(
        repository: getIt<MatchRepository>(),
      ));
  getIt.registerLazySingleton<MatchRepository>(() => MatchRepository());
  getIt.registerLazySingleton<MatchState>(() => MatchState());
  getIt.registerLazySingleton<MatchStore>(() => MatchStore(
        getIt<MatchState>(),
        getIt<MatchRepository>(),
      ));
  getIt.registerLazySingleton<SportsService>(() => SportsService(
        repository: getIt<SportsRepository>(),
      ));
  getIt.registerLazySingleton<SportsRepository>(() => SportsRepository());
  getIt.registerLazySingleton<SportsState>(() => SportsState());
  getIt.registerLazySingleton<SportsStore>(() => SportsStore(
        getIt<SportsState>(),
        getIt<SportsRepository>(),
      ));
  getIt.registerLazySingleton<ChampionshipService>(() => ChampionshipService(
        repository: getIt<ChampionshipRepository>(),
      ));
  getIt.registerLazySingleton<ChampionshipRepository>(
      () => ChampionshipRepository());
  getIt.registerLazySingleton<ChampionshipState>(() => ChampionshipState());
  getIt.registerLazySingleton<ChampionshipStore>(() => ChampionshipStore(
        getIt<ChampionshipState>(),
        getIt<ChampionshipRepository>(),
      ));
  getIt.registerLazySingleton<BonusService>(() => BonusService(
        repository: getIt<BonusRepository>(),
      ));
  getIt.registerLazySingleton<BonusRepository>(() => BonusRepository());
  getIt.registerLazySingleton<BonusState>(() => BonusState());
  getIt.registerLazySingleton<BonusStore>(() => BonusStore(
        getIt<BonusState>(),
        getIt<BonusRepository>(),
      ));
  getIt.registerLazySingleton<WonBetService>(() => WonBetService(
        repository: getIt<WonBetRepository>(),
      ));
  getIt.registerLazySingleton<WonBetRepository>(() => WonBetRepository());
  getIt.registerLazySingleton<WonBetState>(() => WonBetState());
  getIt.registerLazySingleton<WonBetStore>(() => WonBetStore(
        getIt<WonBetState>(),
        getIt<WonBetRepository>(),
      ));
  getIt.registerLazySingleton<TipService>(() => TipService(
        repository: getIt<TipRepository>(),
      ));
  getIt.registerLazySingleton<TipRepository>(() => TipRepository());
  getIt.registerLazySingleton<TipState>(() => TipState());
  getIt.registerLazySingleton<TipStore>(() => TipStore(
        getIt<TipState>(),
        getIt<TipRepository>(),
      ));
  getIt.registerLazySingleton<AppController>(() => AppController(
        getIt<MatchStore>(),
        getIt<SportsStore>(),
        getIt<ChampionshipStore>(),
        getIt<BonusStore>(),
        getIt<WonBetStore>(),
        getIt<TipStore>(),
        getIt<SportsService>(),
        getIt<ChampionshipService>(),
        getIt<WonBetService>(),
        getIt<TipService>(),
        getIt<BonusService>(),
        getIt<MatchService>(),
      ));
}
