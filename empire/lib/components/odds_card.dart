import 'package:flutter/material.dart';

class OddsCard extends StatelessWidget {
  const OddsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30, left: 25, right: 25),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(72, 245, 214, 10),
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
        width: 280,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Casa apostadora',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image(
                                height: 11,
                                width: 57,
                                image: AssetImage('assets/images/bet.png'),
                                fit: BoxFit.cover),
                            Text('Patrocinadora'),
                          ],
                        ),
                        Image(
                            height: 11,
                            width: 57,
                            image: AssetImage('assets/images/betsafe.png'),
                            fit: BoxFit.cover),
                        Image(
                            height: 11,
                            width: 57,
                            image: AssetImage('assets/images/betsson.png'),
                            fit: BoxFit.cover),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 65,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('São Paulo'),
                                Image(
                                    height: 40,
                                    width: 67,
                                    image: AssetImage('assets/images/sp.png'),
                                    fit: BoxFit.cover),
                              ],
                            ),
                            Text('VS'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Palmeiras'),
                                Image(
                                    height: 40,
                                    width: 67,
                                    image: AssetImage('assets/images/palmeiras.png'),
                                    fit: BoxFit.cover),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: const Center(
                                  child: Text(
                                "3.2",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: const Color.fromARGB(72, 245, 214, 10),
                              ),
                              child: const Center(child: Text("2.6")),
                            ),
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: const Color.fromARGB(72, 245, 214, 10),
                              ),
                              child: const Center(child: Text("2.6")),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: const Color.fromARGB(72, 245, 214, 10),
                              ),
                              child: const Center(child: Text("2.2")),
                            ),
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: const Center(
                                  child: Text(
                                "2.6",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: const Color.fromARGB(72, 245, 214, 10),
                              ),
                              child: const Center(child: Text("2.1")),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: const Color.fromARGB(72, 245, 214, 10),
                              ),
                              child: const Center(child: Text("2.6")),
                            ),
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: const Color.fromARGB(72, 245, 214, 10),
                              ),
                              child: const Center(child: Text("2.6")),
                            ),
                            Container(
                              width: 59,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: const Center(
                                  child: Text("3.4",
                                      style: TextStyle(color: Colors.white))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
