import 'package:empire/components/card_bonus.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class BonusSection extends StatelessWidget {
  BonusSection({super.key});

  final homeController = getIt<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
        bottom: 15,
      ),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 35),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Principais bônus de aposta',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardBonus(
                  img: 'lib/images/stake.png',
                  title:
                      homeController.appController.listBonus[0].platform,
                ),
                CardBonus(
                  img: 'lib/images/bet365.png',
                  title:homeController.appController.listBonus[1].platform,
                )
              ],
            ),
          ),
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
