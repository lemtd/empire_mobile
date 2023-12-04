import 'package:empire/modules/authentiction/authentication_controller.dart';
import 'package:empire/routes.dart';
import 'package:empire/src/repositories/login_repository.dart';
import 'package:empire/src/states/login_state.dart';
import 'package:empire/src/stores/login_store.dart';
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
  getIt.registerLazySingleton<AuthenticationController>(() => AuthenticationController(getIt<LoginStore>()));
}