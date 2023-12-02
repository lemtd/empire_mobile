import 'package:empire/components/tabs_menu.dart';
import 'package:empire/modules/home/all_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(51, 0, 0, 0),
        indicatorColor: const Color.fromARGB(255, 255, 255, 255),
        brightness: Brightness.light,
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.black,
            labelStyle: TextStyle(color: Colors.black),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black))),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            shape: const Border(
                bottom: BorderSide(color: Color.fromARGB(21, 245, 214, 10))),
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(51, 245, 214, 10),
            flexibleSpace: null,
            title: const Align(
              alignment: Alignment.center,
              child: Image(
                  height: 25,
                  width: 99.31,
                  image: AssetImage('lib/images/empire.png'),
                  fit: BoxFit.cover),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
              isScrollable: true,
              tabs: [
                Tab(
                  child: TabsMenu(img: 'lib/images/whistle.png', title: 'Todos'),
                ),
                Tab(
                  child: TabsMenu(img: 'lib/images/soccer.png', title: 'Futebol'),
                ),
                Tab(
                  child: TabsMenu(img: 'lib/images/basket.png', title: 'Basquete'),
                ),
                Tab(
                  child: TabsMenu(img: 'lib/images/controller.png', title: 'E-Sports'),
                ),
              ],
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.6],
                colors: [
                  Color.fromARGB(54, 245, 214, 10),
                  Colors.white,
                ],
              ),
            ),
            child: const TabBarView(
              children: [
                // Contents of the "all" tab
                Center(
                    child: SingleChildScrollView(
                        child: AllTab())),
                Center(child: Text('Soccer')), // Contents of the "soccer" tab
                Center(child: Text('Basket')), // Contents of the "basket" tab
                Center(child: Text('E-Sports')), // Contents of the "e-sports" tab
              ],
            ),
          ),
        ),
      ),
    );
  }
}
