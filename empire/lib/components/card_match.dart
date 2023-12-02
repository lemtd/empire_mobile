import 'package:empire/components/bet_field.dart';
import 'package:empire/components/team_info.dart';
import 'package:flutter/material.dart';

class CardMatch extends StatelessWidget {
  const CardMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TeamInfo(
                img: 'lib/images/sp.png',
                name: 'São Paulo',
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
              const TeamInfo(
                img: 'lib/images/palmeiras.png',
                name: 'Palmeiras',
              )
            ],
          ),
          const SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  ':',
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(131, 0, 0, 0)),
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          //widget percentage
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const BetField(
                  title: 'Casa',
                  img: 'lib/images/bet.png',
                  value: '3.2',
                  widthImg: 60,
                  heightImg: 21),
              Container(
                color: const Color.fromARGB(255, 138, 138, 138),
                height: 30,
                width: 0.3,
              ),
              const BetField(
                  title: 'x',
                  img: 'lib/images/betsafe.png',
                  value: '2.6',
                  widthImg: 67,
                  heightImg: 16),
              Container(
                color: const Color.fromARGB(255, 138, 138, 138),
                height: 30,
                width: 0.3,
              ),
              const BetField(
                  title: 'Fora',
                  img: 'lib/images/betsson.png',
                  value: '3.4',
                  widthImg: 52,
                  heightImg: 11),
            ],
          ),
          Container(
            color: const Color.fromARGB(255, 138, 138, 138),
            height: 0.3,
            width: 350,
          ),
          InkWell(onTap: () {}, child: const Text('Ver mais'))
        ],
      ),
    );
  }
}
