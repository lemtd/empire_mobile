import 'package:empire/modules/authentiction/authentication_controller.dart';
import 'package:empire/routes.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupLocator() {
  getIt.registerLazySingleton<Routes>(() => Routes());
  getIt.registerLazySingleton<AuthenticationController>(() => AuthenticationController());
}