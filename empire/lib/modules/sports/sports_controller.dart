import 'package:empire/src/models/sports_model.dart';
import 'package:empire/src/services/sports_service.dart';
import 'package:mobx/mobx.dart';

part 'sports_controller.g.dart';

class SportsController = _SportsControllerBase with _$SportsController;

abstract class _SportsControllerBase with Store {
  final SportsService sportsService;
  
  _SportsControllerBase(this.sportsService);

  @observable
  List<SportsModel> list = [];

  @action
  Future<bool> setList() async {
    list = await sportsService.getSports();
    return true;
  }
}