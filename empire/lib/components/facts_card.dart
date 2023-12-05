import 'package:empire/components/fact_team.dart';
import 'package:flutter/material.dart';

class FactsCard extends StatelessWidget {
  final String img;
  final String team;

  const FactsCard({super.key, required this.img, required this.team});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15, left: 25, right: 25),
      height: 405,
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
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              height: 325,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(
                          height: 28,
                          width: 28,
                          image: AssetImage(img),
                          fit: BoxFit.cover),
                      Text(
                        team,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  FactsTeam()
                ],
              ),
            ),
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
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFF5D70A)),
                        ),
                        child: const Image(
                            height: 11,
                            width: 14,
                            image: AssetImage('assets/images/arrow_right.png'),
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
