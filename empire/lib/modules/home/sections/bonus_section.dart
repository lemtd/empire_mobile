import 'package:empire/components/card_bonus.dart';
import 'package:flutter/material.dart';

class BonusSection extends StatelessWidget {
  const BonusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
        bottom: 15,
      ),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 35),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Principais bônus de aposta',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardBonus(
                  img: 'lib/images/stake.png',
                  title:
                      'Exclusivo 10% de Retorno e 200% de Bônus de Boas-Vindas até \$1000 em Crypto',
                ),
                CardBonus(
                  img: 'lib/images/bet365.png',
                  title: 'Créditos de Aposta até R\$200 na hora!',
                )
              ],
            ),
          ),
          SizedBox(
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Acompanhe todas as partidas',
                  style: TextStyle(
                      color: Color(0xFF505854),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFF5D70A)),
                    ),
                    child: const Image(
                        height: 16,
                        width: 21,
                        image: AssetImage('lib/images/arrow_right.png'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
