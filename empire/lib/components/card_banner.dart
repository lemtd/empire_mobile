import 'package:flutter/material.dart';

class CardBanner extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final Color color;
  final bool isLeague;

  const CardBanner(
      {super.key,
      required this.img,
      required this.title,
      required this.color,
      required this.subtitle,
      required this.isLeague});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Stack(children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 166,
            width: 270,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                  30.0), 
            ),
          ),
        ),
        Positioned(
            top: 45,
            left: 25,
            child: SizedBox(
                height: 80,
                width: isLeague ? 95 : 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ))),
        Positioned(
          right: 0,
          bottom: isLeague ? 35 : 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(30.0),
            ),
            child: Image(
                height: isLeague ? 150 : 181,
                width: isLeague ? 130 : 191,
                image: AssetImage(img),
                fit: BoxFit.cover),
          ),
        ),
      ]),
    );
  }
}
