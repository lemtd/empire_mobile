import 'package:empire/modules/home/sections/banners_section.dart';
import 'package:empire/modules/home/sections/bonus_section.dart';
import 'package:empire/modules/home/sections/championship_section.dart';
import 'package:empire/modules/home/sections/last_bet_section.dart';
import 'package:empire/modules/home/sections/match_section.dart';
import 'package:empire/modules/home/sections/tip_section.dart';
import 'package:flutter/material.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BannerSection(),
        ChampionshipSection(),
        const MatchSection(),
        TipSection(),
        BonusSection(),
        const LastBetSection(),
        const Padding(
          padding: EdgeInsets.only(top: 25),
          child: SizedBox(
            height: 125,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(
                height: 36,
                width: 143,
                image: AssetImage('lib/images/empire.png'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
