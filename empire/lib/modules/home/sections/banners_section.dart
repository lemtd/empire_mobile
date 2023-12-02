import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire/components/card_banner.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: CarouselSlider(
          items: const [
            CardBanner(img: 'lib/images/image4.png', title: 'Campeonatos populares', color: Color(0xFFF5D70A), subtitle: '', isLeague: false,),
            CardBanner(img: 'lib/images/nba.png', title: 'NBA', color: Color(0xFFC0C4C2), subtitle: 'National Basketball Association', isLeague: false,),
            CardBanner(img: 'lib/images/redbull.png', title: 'League of its Own', color: Color.fromARGB(45, 196, 178, 58), subtitle: '', isLeague: true,),
          ],
          options: CarouselOptions(
            height: 191,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            viewportFraction:
                0.7,
          )),
    );
  }
}
