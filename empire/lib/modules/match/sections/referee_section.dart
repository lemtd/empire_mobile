import 'package:empire/components/facts_referee.dart';
import 'package:flutter/material.dart';

class RefereeSection extends StatelessWidget {
  const RefereeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30, left: 25, right: 25),
      height: 400,
      width: 359,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(20, 0, 0, 0).withOpacity(0.15),
            spreadRadius: 0.1,
            blurRadius: 15,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 105,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                    height: 56,
                    width: 56,
                    image: AssetImage('lib/images/referee.png'),
                    fit: BoxFit.cover),
                Container(
                    width: 130,
                    child: const Text(
                      'André Luiz Skettino Policarpo',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
          FactsReferee(),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Ver mais',
                    style: TextStyle(
                        color: Color(0xFF505854),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFF5D70A)),
                      ),
                      child: const Image(
                          height: 11,
                          width: 14,
                          image: AssetImage('lib/images/arrow_right.png'),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
