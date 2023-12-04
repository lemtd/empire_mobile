import 'package:empire/components/bet_field.dart';
import 'package:empire/components/button.dart';
import 'package:empire/modules/home/sections/last_bet_section.dart';
import 'package:empire/modules/match/sections/confrontation_section.dart';
import 'package:empire/modules/match/sections/facts_section.dart';
import 'package:empire/modules/match/sections/infos_section.dart';
import 'package:empire/modules/match/sections/referee_section.dart';
import 'package:empire/modules/match/sections/teams_section.dart';
import 'package:flutter/material.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
          child: Column(
        children: [
          TeamsSection(),
          InfosSection(),
          FactsSection(),
          RefereeSection(),
          LastBetSection(),
          ConfrontationSection()
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color(0xFFF5D70A),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 35,
            child: SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      onPressed: () {},
                      colorBackground: Colors.black,
                      colorText: Colors.white,
                      text: 'Odds mais altas',
                      border: false,
                      widthButton: 150,
                      heightButton: 47),
                  Button(
                      onPressed: () {},
                      colorBackground: const Color(0xFFF5D70A),
                      colorText: const Color.fromARGB(255, 0, 0, 0),
                      text: 'Outras Odds',
                      border: true,
                      borderColor: Colors.black,
                      widthButton: 130,
                      heightButton: 47),
                ],
              ),
            ),
          ),
          Positioned(
            top: 95,
            left: (MediaQuery.of(context).size.width - 250) / 2,
            child: SizedBox(
              width: 250,
              child: Row(
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
            ),
          )
        ],
      ),
    );
  }
}
