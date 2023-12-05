import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire/components/card_championship.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class ChampionshipSection extends StatelessWidget {
  ChampionshipSection({super.key});

  final homeController = getIt<HomeController>();

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
              items: homeController.appController.listChampionships.map((sport) {
                    return CardChampionship(img: sport.image);
                  }).toList(),
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
