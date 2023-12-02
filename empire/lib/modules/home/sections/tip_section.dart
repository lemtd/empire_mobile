import 'package:empire/components/card_tip.dart';
import 'package:flutter/material.dart';

class TipSection extends StatelessWidget {
  const TipSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Text('Dicas'),
        InkWell(onTap: () {}, child: const Text('Ver todas')),
        CardTip()
      ],)
    ],);
  }
}