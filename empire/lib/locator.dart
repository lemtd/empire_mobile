import 'package:empire/modules/authentiction/authentication_controller.dart';
import 'package:empire/modules/initial/app_controller.dart';
import 'package:empire/routes.dart';
import 'package:empire/src/repositories/championship_repository.dart';
import 'package:empire/src/repositories/login_repository.dart';
import 'package:empire/src/repositories/match_repository.dart';
import 'package:empire/src/repositories/sports_repository.dart';
import 'package:empire/src/states/championship_state.dart';
import 'package:empire/src/states/login_state.dart';
import 'package:empire/src/states/match_state.dart';
import 'package:empire/src/states/sports_state.dart';
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
  getIt.registerLazySingleton<MatchRepository>(() => MatchRepository());
  getIt.registerLazySingleton<MatchState>(() => MatchState());
  getIt.registerLazySingleton<MatchStore>(() => MatchStore(
        getIt<MatchState>(),
        getIt<MatchRepository>(),
      ));
  getIt.registerLazySingleton<SportsRepository>(() => SportsRepository());
  getIt.registerLazySingleton<SportsState>(() => SportsState());
  getIt.registerLazySingleton<SportsStore>(() => SportsStore(
        getIt<SportsState>(),
        getIt<SportsRepository>(),
      ));
  getIt.registerLazySingleton<ChampionshipRepository>(() => ChampionshipRepository());
  getIt.registerLazySingleton<ChampionshipState>(() => ChampionshipState());
  getIt.registerLazySingleton<ChampionshipStore>(() => ChampionshipStore(
        getIt<ChampionshipState>(),
        getIt<ChampionshipRepository>(),
      ));
  getIt.registerLazySingleton<AppController>(() => AppController(
        getIt<MatchStore>(),
        getIt<SportsStore>(),
        getIt<ChampionshipStore>(),
      ));
}
