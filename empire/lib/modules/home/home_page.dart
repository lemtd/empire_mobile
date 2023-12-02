import 'package:empire/components/tabs_menu.dart';
import 'package:empire/modules/home/all_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<DrawerControllerState> drawerKey =
      GlobalKey<DrawerControllerState>();

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
                    child:
                        TabsMenu(img: 'lib/images/whistle.png', title: 'Todos'),
                  ),
                  Tab(
                    child: TabsMenu(
                        img: 'lib/images/soccer.png', title: 'Futebol'),
                  ),
                  Tab(
                    child: TabsMenu(
                        img: 'lib/images/basket.png', title: 'Basquete'),
                  ),
                  Tab(
                    child: TabsMenu(
                        img: 'lib/images/controller.png', title: 'E-Sports'),
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
                  Center(child: SingleChildScrollView(child: AllTab())),
                  Center(child: Text('Soccer')), // Contents of the "soccer" tab
                  Center(child: Text('Basket')), // Contents of the "basket" tab
                  Center(
                      child:
                          Text('E-Sports')), // Contents of the "e-sports" tab
                ],
              ),
            ),
            // bottomNavigationBar: BottomNavigationBar(
            //   items: [
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.home),
            //       label: 'Início',
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.search),
            //       label: 'Pesquisar',
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.person),
            //       label: 'Perfil',
            //     ),
            //   ],
            //   currentIndex: 0, // Índice do item selecionado
            //   selectedItemColor: Colors.blue, // Cor do item selecionado
            //   onTap: (index) {
            //     // Tratar a seleção de item aqui
            //     print('Item selecionado: $index');
            //   },
            // ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     // Ação quando o botão de Drawer é pressionado
            //     print('Abrir Drawer');
            //   },
            //   child: Icon(Icons.menu),
            // ),
            // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountEmail: Text("user@mail.com"),
                    accountName: Text("Seu zé"),
                    currentAccountPicture: CircleAvatar(
                      child: Text("SZ"),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Minha conta"),
                    onTap: () {
                      Navigator.pop(context);
                      //Navegar para outra página
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_basket),
                    title: Text("Meus pedidos"),
                    onTap: () {
                      Navigator.pop(context);
                      //Navegar para outra página
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text("Favoritos"),
                    onTap: () {
                      Navigator.pop(context);
                      //Navegar para outra página
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        drawerKey.currentState?.open();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20.0),
                        primary: const Color.fromARGB(
                            255, 0, 0, 0), // Cor de fundo do botão
                      ),
                      child: Container(
                        width: 15.0, // Largura do botão
                        height: 15.0, // Altura do botão
                        child: Center(
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(left: 25, right: 25),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              print('Opção 1 do Menu pressionada');
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              // Ação quando uma opção do menu é pressionada
                              print('Opção 2 do Menu pressionada');
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              // Ação quando uma opção do menu é pressionada
                              print('Opção 3 do Menu pressionada');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.circle,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        // Ação quando o botão de perfil é pressionado
                        print('Botão de Perfil pressionado');
                      },
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
