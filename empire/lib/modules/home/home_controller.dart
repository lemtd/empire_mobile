import 'package:empire/modules/sports/sports_controller.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final SportsController sportsController;
  
  _HomeControllerBase(this.sportsController);
}