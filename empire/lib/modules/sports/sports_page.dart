import 'package:empire/components/card_sports.dart';
import 'package:flutter/material.dart';

class SportsPage extends StatelessWidget {
  const SportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 750,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 45),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(), backgroundColor: const Color(0xFFF5D70A),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Image(
                            height: 14,
                            width: 8,
                            image: AssetImage('lib/images/arrow.png'),
                            fit: BoxFit.cover),
                      ),
                      const Text(
                        'Esportes',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: 'Pesquisar...',
                      hintStyle: const TextStyle(color: Color(0xFF484848)),
                      prefixIcon:
                          const Icon(Icons.search, color: Color(0xFF484848)), 
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none, 
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 565,
                  width: 380,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardSports(
                            img: 'lib/images/soccer.png',
                            title: 'Futebol',
                          ),
                          CardSports(
                            img: 'lib/images/basket.png',
                            title: 'Basquete',
                          ),
                          CardSports(
                            img: 'lib/images/controller.png',
                            title: 'E-Sports',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardSports(
                            img: 'lib/images/poker.png',
                            title: 'Poker',
                          ),
                          CardSports(
                            img: 'lib/images/biceps.png',
                            title: 'MMA',
                          ),
                          CardSports(
                            img: 'lib/images/volley.png',
                            title: 'Volei',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardSports(
                            img: 'lib/images/controller.png',
                            title: 'Cavalos',
                          ),
                          CardSports(
                            img: 'lib/images/boxing.png',
                            title: 'Box',
                          ),
                          CardSports(
                            img: 'lib/images/football.png',
                            title: 'Futebol Americano',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CardSports(
                            img: 'lib/images/tenis.png',
                            title: 'Tenis',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
