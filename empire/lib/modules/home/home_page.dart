import 'package:empire/components/loading_modal.dart';
import 'package:empire/components/tabs_menu.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/home/all_tab.dart';
import 'package:empire/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    final homeController = getIt<HomeController>();

    return DefaultTabController(
      length: 4,
      child: Scaffold(
          key: drawerKey,
          appBar: AppBar(
            shape: const Border(
                bottom: BorderSide(color: Color.fromARGB(21, 245, 214, 10))),
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(51, 245, 214, 10),
            flexibleSpace: null,
            title: const Align(
              alignment: Alignment.center,
              child: Image(
                  height: 25,
                  width: 99.31,
                  image: AssetImage('assets/images/empire.png'),
                  fit: BoxFit.cover),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
              isScrollable: true,
              tabs: [
                Tab(
                  child:
                      TabsMenu(img: 'assets/images/whistle.png', title: 'Todos'),
                ),
                Tab(
                  child:
                      TabsMenu(img: 'assets/images/soccer.png', title: 'Futebol'),
                ),
                Tab(
                  child:
                      TabsMenu(img: 'assets/images/basket.png', title: 'Basquete'),
                ),
                Tab(
                  child: TabsMenu(
                      img: 'assets/images/controller.png', title: 'E-Sports'),
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
                    child: Text('E-Sports')), // Contents of the "e-sports" tab
              ],
            ),
          ),
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(16.0),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.help_outline_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                'Ajuda e Suporte',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                    size: 20,
                  ),
                  title: const Text("Início"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                      height: 20,
                      width: 20,
                      image: AssetImage('assets/images/whistle.png'),
                      fit: BoxFit.cover),
                  title: const Text("Esportes"),
                  onTap: () async {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) => const LoadingModal(),
                    );
                    if (await homeController.appController.setListSports()) {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, '/sports');
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.bookmark_border_rounded,
                    size: 17,
                  ),
                  title: const Text("Notícias e Dicas"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                      height: 17,
                      width: 17,
                      image: AssetImage('assets/images/star.png'),
                      fit: BoxFit.cover),
                  title: const Text("Favoritos"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                      height: 15,
                      width: 17,
                      image: AssetImage('assets/images/user.png'),
                      fit: BoxFit.cover),
                  title: const Text("Influenciadores"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.access_time_rounded,
                    size: 17,
                  ),
                  title: const Text("Comparador de odds"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                      height: 13,
                      width: 16,
                      image: AssetImage('assets/images/ticket.png'),
                      fit: BoxFit.cover),
                  title: const Text("Jogo consciente"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Image(
                      height: 17,
                      width: 15,
                      image: AssetImage('assets/images/security.png'),
                      fit: BoxFit.cover),
                  title: const Text("Privacidade e segurança"),
                  onTap: () {},
                ),
              ],
            ),
          ),
          floatingActionButton: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 50,
                child: ElevatedButton(
                  onPressed: () {
                    drawerKey.currentState!.openDrawer();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shape: const CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.all(20.0),
                  ),
                  child: const SizedBox(
                    width: 15.0,
                    height: 15.0,
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
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(20, 0, 0, 0)
                              .withOpacity(0.15),
                          spreadRadius: 0.1,
                          blurRadius: 15,
                          offset: const Offset(0, 0),
                        ),
                      ]),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipOval(
                        child: IconButton(
                          icon: const Icon(
                            Icons.home,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 20,
                          ),
                          onPressed: () {
                            print('Click 1');
                          },
                        ),
                      ),
                      ClipOval(
                        child: IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            print('Click 2');
                          },
                        ),
                      ),
                      ClipOval(
                        child: IconButton(
                          icon: const Icon(
                            Icons.bookmark_border_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            print('Click 3');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 40,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: InkWell(
                      onTap: () {
                        print('Click avatar');
                      },
                      child: const Image(
                          height: 40,
                          width: 40,
                          image: AssetImage('assets/images/avatar1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
