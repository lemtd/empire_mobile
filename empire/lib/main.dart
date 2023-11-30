import 'package:empire/locator.dart';
import 'package:empire/routes.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Império',
      routes: getIt<Routes>().routes,
      debugShowCheckedModeBanner: false,
    );
  }
}