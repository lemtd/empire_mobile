import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire/components/facts_card.dart';
import 'package:flutter/material.dart';

class FactsSection extends StatelessWidget {
  const FactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 35, right: 35),
          child: const Text(
            'Fatos do time',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        CarouselSlider(
            items: const [
              FactsCard(
                img: 'assets/images/sp.png',
                team: 'São Paulo',
              ),
              FactsCard(
                img: 'assets/images/palmeiras.png',
                team: 'Palmeiras',
              ),
            ],
            options: CarouselOptions(
                height: 405,
                enlargeCenterPage: false,
                enableInfiniteScroll: false,
                viewportFraction: 0.8,
                padEnds: false)),
      ],
    );
  }
}
