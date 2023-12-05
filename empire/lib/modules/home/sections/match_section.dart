import 'package:empire/components/card_match.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class MatchSection extends StatelessWidget {
  const MatchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          //widget tabbar
          CardMatch(isMatchPage: false, img_a: homeController.appController.listMatch[0].teamAImage, img_b: homeController.appController.listMatch[0].teamBImage, team_a: homeController.appController.listMatch[0].teamA, team_b: homeController.appController.listMatch[0].teamB, bet: homeController.appController.listMatch[0].odds1xbet.toString(), betsafe: homeController.appController.listMatch[0].oddsBetsafe.toString(), betsson: homeController.appController.listMatch[0].oddsBetsson.toString(), id: 0,),
          CardMatch(isMatchPage: false, img_a: homeController.appController.listMatch[1].teamAImage, img_b: homeController.appController.listMatch[1].teamBImage, team_a: homeController.appController.listMatch[1].teamA, team_b: homeController.appController.listMatch[1].teamB, bet: homeController.appController.listMatch[1].odds1xbet.toString(), betsafe: homeController.appController.listMatch[1].oddsBetsafe.toString(), betsson: homeController.appController.listMatch[1].oddsBetsson.toString(), id: 1,),
          SizedBox(
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Acompanhe todas as partidas',
                  style: TextStyle(
                      color: Color(0xFF505854),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFF5D70A)),
                    ),
                    child: const Image(
                        height: 16,
                        width: 21,
                        image: AssetImage('lib/images/arrow_right.png'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
