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
        theme: ThemeData(
          primaryColor: const Color.fromARGB(51, 0, 0, 0),
          indicatorColor: const Color.fromARGB(255, 255, 255, 255),
          brightness: Brightness.light,
          tabBarTheme: const TabBarTheme(
              labelColor: Colors.black,
              labelStyle: TextStyle(color: Colors.black),
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.black))),
        ));
  }
}
