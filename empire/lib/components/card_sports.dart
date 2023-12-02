import 'package:flutter/material.dart';

class CardSports extends StatelessWidget {
  final String img;
  final String title;

  const CardSports({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 128,
      decoration: BoxDecoration(
        color: const Color.fromARGB(45, 196, 178, 58),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 31,
            width: 31,
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
