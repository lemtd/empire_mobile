import 'package:flutter/material.dart';

class ConfrontationCard extends StatelessWidget {
  const ConfrontationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 265,
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
      child: const SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      height: 37,
                      width: 37,
                      image: AssetImage('lib/images/image2.png'),
                      fit: BoxFit.cover),
                  Text('Brasileirão serie A',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      height: 37,
                      width: 37,
                      image: AssetImage('lib/images/sp.png'),
                      fit: BoxFit.cover),
                  Column(
                    children: [
                      Text('2X2',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text('01/08/2023',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 10,
                          ))
                    ],
                  ),
                  Image(
                      height: 37,
                      width: 37,
                      image: AssetImage('lib/images/palmeiras.png'),
                      fit: BoxFit.cover),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
