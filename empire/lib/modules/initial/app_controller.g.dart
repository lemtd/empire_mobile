// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppController on _AppControllerBase, Store {
  late final _$listSportsAtom =
      Atom(name: '_AppControllerBase.listSports', context: context);

  @override
  List<SportsModel> get listSports {
    _$listSportsAtom.reportRead();
    return super.listSports;
  }

  @override
  set listSports(List<SportsModel> value) {
    _$listSportsAtom.reportWrite(value, super.listSports, () {
      super.listSports = value;
    });
  }

  late final _$listChampionshipsAtom =
      Atom(name: '_AppControllerBase.listChampionships', context: context);

  @override
  List<ChampionshipModel> get listChampionships {
    _$listChampionshipsAtom.reportRead();
    return super.listChampionships;
  }

  @override
  set listChampionships(List<ChampionshipModel> value) {
    _$listChampionshipsAtom.reportWrite(value, super.listChampionships, () {
      super.listChampionships = value;
    });
  }

  late final _$listWonBetsAtom =
      Atom(name: '_AppControllerBase.listWonBets', context: context);

  @override
  List<WonBetModel> get listWonBets {
    _$listWonBetsAtom.reportRead();
    return super.listWonBets;
  }

  @override
  set listWonBets(List<WonBetModel> value) {
    _$listWonBetsAtom.reportWrite(value, super.listWonBets, () {
      super.listWonBets = value;
    });
  }

  late final _$listTipsAtom =
      Atom(name: '_AppControllerBase.listTips', context: context);

  @override
  List<TipModel> get listTips {
    _$listTipsAtom.reportRead();
    return super.listTips;
  }

  @override
  set listTips(List<TipModel> value) {
    _$listTipsAtom.reportWrite(value, super.listTips, () {
      super.listTips = value;
    });
  }

  late final _$listBonusAtom =
      Atom(name: '_AppControllerBase.listBonus', context: context);

  @override
  List<BonusModel> get listBonus {
    _$listBonusAtom.reportRead();
    return super.listBonus;
  }

  @override
  set listBonus(List<BonusModel> value) {
    _$listBonusAtom.reportWrite(value, super.listBonus, () {
      super.listBonus = value;
    });
  }

  late final _$listMatchAtom =
      Atom(name: '_AppControllerBase.listMatch', context: context);

  @override
  List<MatchModel> get listMatch {
    _$listMatchAtom.reportRead();
    return super.listMatch;
  }

  @override
  set listMatch(List<MatchModel> value) {
    _$listMatchAtom.reportWrite(value, super.listMatch, () {
      super.listMatch = value;
    });
  }

  late final _$matchAtom =
      Atom(name: '_AppControllerBase.match', context: context);

  @override
  MatchModel get match {
    _$matchAtom.reportRead();
    return super.match;
  }

  @override
  set match(MatchModel value) {
    _$matchAtom.reportWrite(value, super.match, () {
      super.match = value;
    });
  }

  late final _$setListSportsAsyncAction =
      AsyncAction('_AppControllerBase.setListSports', context: context);

  @override
  Future<bool> setListSports() {
    return _$setListSportsAsyncAction.run(() => super.setListSports());
  }

  late final _$setListChampionshipsAsyncAction =
      AsyncAction('_AppControllerBase.setListChampionships', context: context);

  @override
  Future<bool> setListChampionships() {
    return _$setListChampionshipsAsyncAction
        .run(() => super.setListChampionships());
  }

  late final _$setListWonBetsAsyncAction =
      AsyncAction('_AppControllerBase.setListWonBets', context: context);

  @override
  Future<bool> setListWonBets() {
    return _$setListWonBetsAsyncAction.run(() => super.setListWonBets());
  }

  late final _$setListTipsAsyncAction =
      AsyncAction('_AppControllerBase.setListTips', context: context);

  @override
  Future<bool> setListTips() {
    return _$setListTipsAsyncAction.run(() => super.setListTips());
  }

  late final _$setListBonusAsyncAction =
      AsyncAction('_AppControllerBase.setListBonus', context: context);

  @override
  Future<bool> setListBonus() {
    return _$setListBonusAsyncAction.run(() => super.setListBonus());
  }

  late final _$setListMatchesAsyncAction =
      AsyncAction('_AppControllerBase.setListMatches', context: context);

  @override
  Future<bool> setListMatches() {
    return _$setListMatchesAsyncAction.run(() => super.setListMatches());
  }

  late final _$setMatchAsyncAction =
      AsyncAction('_AppControllerBase.setMatch', context: context);

  @override
  Future<void> setMatch(MatchModel matchModel) {
    return _$setMatchAsyncAction.run(() => super.setMatch(matchModel));
  }

  @override
  String toString() {
    return '''
listSports: ${listSports},
listChampionships: ${listChampionships},
listWonBets: ${listWonBets},
listTips: ${listTips},
listBonus: ${listBonus},
listMatch: ${listMatch},
match: ${match}
    ''';
  }
}
