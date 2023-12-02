import 'package:flutter/material.dart';

class CardBonus extends StatelessWidget {
  final String img;
  final String title;

  const CardBonus({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: 350,
      decoration: BoxDecoration(
        color: const Color.fromARGB(45, 196, 178, 58),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
              height: 40, width: 40, image: AssetImage(img), fit: BoxFit.cover),
          SizedBox(
            width: 225,
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
