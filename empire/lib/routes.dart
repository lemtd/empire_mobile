import 'package:empire/initial/initial_page.dart';
import 'package:flutter/material.dart';

class Routes{
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const InitialPage(),
  };
}