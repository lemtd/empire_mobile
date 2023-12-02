import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire/components/card_championship.dart';
import 'package:flutter/material.dart';

class ChampionshipSection extends StatelessWidget {
  const ChampionshipSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Campeonatos populares',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 10,),
          CarouselSlider(
              items: const [
                CardChampionship(img: 'lib/images/champions.png'),
                CardChampionship(img: 'lib/images/europe.png'),
                CardChampionship(img: 'lib/images/image2.png'),
                CardChampionship(img: 'lib/images/image3.png'),
                CardChampionship(img: 'lib/images/image3.png'),
              ],
              options: CarouselOptions(
                height: 80,
                enlargeCenterPage: false,
                enableInfiniteScroll: false,
                viewportFraction: 0.25,
                padEnds: false
              ))
        ],
      ),
    );
  }
}
