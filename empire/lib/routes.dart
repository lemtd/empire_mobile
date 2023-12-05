import 'package:empire/modules/authentication/login_email.dart';
import 'package:empire/modules/authentication/login_password.dart';
import 'package:empire/modules/home/home_page.dart';
import 'package:empire/modules/initial/app_page.dart';
import 'package:empire/modules/match/match_page.dart';
import 'package:empire/modules/sports/sports_page.dart';
import 'package:flutter/material.dart';

class Routes {
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const AppPage(),
    '/login_email': (_) => const LoginEmail(),
    '/login_password': (_) => const LoginPassword(),
    '/home': (_) => const HomePage(),
    '/sports': (_) => SportsPage(),
    '/match': (_) => const MatchPage(),
  };
}
