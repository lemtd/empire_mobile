import 'package:empire/components/bet_field.dart';
import 'package:empire/components/team_info.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class CardMatch extends StatelessWidget {
  final bool isMatchPage;
  final String img_a;
  final String team_a;
  final String img_b;
  final String team_b;
  final String bet;
  final String betsafe;
  final String betsson;
  final int id;

  CardMatch({super.key, required this.isMatchPage, required this.img_a, required this.img_b, required this.team_a, required this.team_b, required this.bet, required this.betsafe, required this.betsson, required this.id});

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15, left: 25, right: 25),
      height: 400,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(20, 0, 0, 0).withOpacity(0.15),
            spreadRadius: 0.1,
            blurRadius: 15,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TeamInfo(
                img: img_a,
                name: team_a,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Stack(
                      children: [
                        const Text('Ao vivo'),
                        Positioned(
                          bottom: 35,
                          right: 0,
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: const Color(0xFFDEE0DF),
                        width: 1,
                      ),
                      color: Colors.transparent,
                    ),
                    child: const Center(child: Text("60'")),
                  ),
                ],
              ),
              TeamInfo(
                img: img_b,
                name: team_b,
              )
            ],
          ),
          const SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  ':',
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(131, 0, 0, 0)),
                ),
                Text(
                  '',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          //widget percentage
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BetField(
                  title: 'Casa',
                  img: 'assets/images/bet.png',
                  value: bet,
                  widthImg: 60,
                  heightImg: 21),
              Container(
                color: const Color.fromARGB(255, 138, 138, 138),
                height: 30,
                width: 0.3,
              ),
              BetField(
                  title: 'x',
                  img: 'assets/images/betsafe.png',
                  value: betsafe,
                  widthImg: 67,
                  heightImg: 16),
              Container(
                color: const Color.fromARGB(255, 138, 138, 138),
                height: 30,
                width: 0.3,
              ),
              BetField(
                  title: 'Fora',
                  img: 'assets/images/betsson.png',
                  value: betsson,
                  widthImg: 52,
                  heightImg: 11),
            ],
          ),
          Container(
            color: const Color.fromARGB(255, 138, 138, 138),
            height: 0.3,
            width: 300,
          ),
          !isMatchPage
              ? InkWell(
                  onTap: () {
                    homeController.appController.setMatch(homeController.appController.listMatch[id]);
                    Navigator.pushNamed(context, '/match');
                  },
                  child: const Text('Ver mais'))
              : Container()
        ],
      ),
    );
  }
}
