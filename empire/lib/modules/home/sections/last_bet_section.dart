import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire/components/card_bet.dart';
import 'package:flutter/material.dart';

class LastBetSection extends StatelessWidget {
  const LastBetSection({super.key});

  @override
  Widget build(BuildContext context) {
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
                      image: AssetImage('lib/images/noto_fire.png'),
                      fit: BoxFit.cover),
                  Text(
                    'Últimas apostas ganhas',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            CarouselSlider(
                items: const [
                  CardBet(
                      img: 'lib/images/bet365.png',
                      name: 'João Felipe Miranda',
                      description: 'Mais de 2.6 Goals',
                      teams: 'BRA X ARG',
                      time: 'Há 10 minutos',
                      value: '1.44',
                      avatar: 'lib/images/avatar2.png'),
                  CardBet(
                      img: 'lib/images/bet365.png',
                      name: 'João Felipe Miranda',
                      description: 'Mais de 2.6 Goals',
                      teams: 'BRA X ARG',
                      time: 'Há 10 minutos',
                      value: '1.44',
                      avatar: 'lib/images/avatar2.png'),
                  CardBet(
                      img: 'lib/images/bet365.png',
                      name: 'João Felipe Miranda',
                      description: 'Mais de 2.6 Goals',
                      teams: 'BRA X ARG',
                      time: 'Há 10 minutos',
                      value: '1.44',
                      avatar: 'lib/images/avatar2.png'),
                ],
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
