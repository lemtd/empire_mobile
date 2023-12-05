import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire/components/card_bet.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class LastBetSection extends StatelessWidget {
  const LastBetSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = getIt<HomeController>();

    return SizedBox(
      height: 200,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              margin: const EdgeInsets.only(left: 35, top: 15),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                      height: 24,
                      width: 24,
                      image: AssetImage('assets/images/noto_fire.png'),
                      fit: BoxFit.cover),
                  Text(
                    'Últimas apostas ganhas',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            CarouselSlider(
                items: 
                homeController.appController.listWonBets.map((bet) {
                    return CardBet(
                      img: bet.userAvatar,
                      name: bet.user,
                      description: bet.platform,
                      teams: '',
                      time: '',
                      value: bet.score.toString(),
                      avatar: bet.userAvatar);
                  }).toList(),
                options: CarouselOptions(
                    height: 92,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.9,
                    padEnds: false))
          ],
        ),
      ),
    );
  }
}
