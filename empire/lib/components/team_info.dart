import 'package:flutter/material.dart';

class TeamInfo extends StatelessWidget {
  final String img;
  final String name;

  const TeamInfo({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(height: 60, width: 62, image: AssetImage(img), fit: BoxFit.cover),
        Text(name)
      ],
    );
  }
}
