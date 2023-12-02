import 'package:empire/components/card_match.dart';
import 'package:flutter/material.dart';

class MatchSection extends StatelessWidget {
  const MatchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //widget tabbar
        const CardMatch(),
        const CardMatch(),
        SizedBox(
          width: 280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Acompanhe todas as partidas', style: TextStyle(color: Color(0xFF505854), fontSize: 14, fontWeight: FontWeight.bold),),
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
    );
  }
}
