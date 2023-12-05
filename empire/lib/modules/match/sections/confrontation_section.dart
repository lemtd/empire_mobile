import 'package:empire/components/confrontation_card.dart';
import 'package:flutter/material.dart';

class ConfrontationSection extends StatelessWidget {
  const ConfrontationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 550,
              color: const Color.fromRGBO(100, 110, 105, 1),
            ),
            Container(
                height: 250, color: const Color.fromARGB(255, 255, 255, 255)),
          ],
        ),
        Positioned(
          top: 60,
          child: SizedBox(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Últimos confrontos',
                    style: TextStyle(
                        color: Color.fromRGBO(253, 253, 253, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Container(
                  height: 213,
                  width: 359,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.1),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                                child: Column(
                              children: [
                                Text(
                                  'São Paulo',
                                  style: TextStyle(
                                      color: Color.fromRGBO(253, 253, 253, 1),
                                      fontSize: 12),
                                ),
                                Image(
                                    height: 37,
                                    width: 37,
                                    image: AssetImage('assets/images/sp.png'),
                                    fit: BoxFit.cover),
                              ],
                            )),
                            Container(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              height: 20,
                              width: 0.3,
                            ),
                            const SizedBox(
                                child: Column(
                              children: [
                                Text('2',
                                    style: TextStyle(
                                        color: Color.fromRGBO(253, 253, 253, 1),
                                        fontSize: 40)),
                                Text('Vitórias',
                                    style: TextStyle(
                                        color: Color.fromRGBO(253, 253, 253, 1),
                                        fontSize: 12)),
                              ],
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('2',
                                style: TextStyle(
                                    color: Color.fromRGBO(253, 253, 253, 1),
                                    fontSize: 24)),
                            Text('Empastes',
                                style: TextStyle(
                                    color: Color.fromRGBO(253, 253, 253, 1),
                                    fontSize: 12)),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                                child: Column(
                              children: [
                                Text(
                                  'Palmeiras',
                                  style: TextStyle(
                                      color: Color.fromRGBO(253, 253, 253, 1),
                                      fontSize: 12),
                                ),
                                Image(
                                    height: 37,
                                    width: 37,
                                    image:
                                        AssetImage('assets/images/palmeiras.png'),
                                    fit: BoxFit.cover),
                              ],
                            )),
                            Container(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              height: 20,
                              width: 0.3,
                            ),
                            const SizedBox(
                                child: Column(
                              children: [
                                Text('2',
                                    style: TextStyle(
                                        color: Color.fromRGBO(253, 253, 253, 1),
                                        fontSize: 40)),
                                Text('Vitórias',
                                    style: TextStyle(
                                        color: Color.fromRGBO(253, 253, 253, 1),
                                        fontSize: 12)),
                              ],
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const ConfrontationCard(),

                // CarouselSlider(
                //     items: const [
                //       ConfrontationCard(),
                //       ConfrontationCard(),
                //       ConfrontationCard(),
                //       ConfrontationCard(),
                //     ],
                //     options: CarouselOptions(
                //         height: 120,
                //         enlargeCenterPage: false,
                //         enableInfiniteScroll: false,
                //         viewportFraction: 1,
                //         padEnds: false))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
