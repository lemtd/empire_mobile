import 'package:empire/modules/home/sections/banners_section.dart';
import 'package:empire/modules/home/sections/bonus_section.dart';
import 'package:empire/modules/home/sections/championship_section.dart';
import 'package:empire/modules/home/sections/match_section.dart';
import 'package:empire/modules/home/sections/tip_section.dart';
import 'package:flutter/material.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      BannerSection(),
      ChampionshipSection(),
      MatchSection(),
      TipSection(),
      BonusSection()
    ],);
  }
}