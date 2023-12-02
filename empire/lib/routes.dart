import 'package:empire/modules/authentiction/login_email.dart';
import 'package:empire/modules/authentiction/login_password.dart';
import 'package:empire/modules/home/home_page.dart';
import 'package:empire/modules/initial/initial_page.dart';
import 'package:empire/modules/sports/sports_page.dart';
import 'package:flutter/material.dart';

class Routes{
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const InitialPage(),
    '/login_email': (_) => const LoginEmail(),
    '/login_password': (_) => const LoginPassword(),
    '/home': (_) => const HomePage(),
    '/sports': (_) => const SportsPage(),
  };
}