import 'package:empire/components/button_icon.dart';
import 'package:flutter/material.dart';

class CardTip extends StatelessWidget {
  const CardTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
            height: 16,
            width: 21,
            image: AssetImage('lib/images/arrow_right.png'),
            fit: BoxFit.cover),
        Column(
          children: [
            Row(
              children: [
                ButtonIcon(
                    onPressed: () {},
                    colorBackground: Colors.transparent,
                    colorText: Colors.black,
                    img: 'lib/images/soccer.png',
                    text: 'Futebol',
                    heightIcon: 16,
                    widhtIcon: 16),
                ButtonIcon(
                    onPressed: () {},
                    colorBackground: Colors.transparent,
                    colorText: Colors.black,
                    img: 'lib/images/basket.png',
                    text: 'Basquete',
                    heightIcon: 16,
                    widhtIcon: 16),
              ],
            )
          ],
        ),
      ],
    );
  }
}
