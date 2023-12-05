import 'package:flutter/material.dart';

class CardBet extends StatelessWidget {
  final String img;
  final String avatar;
  final String name;
  final String description;
  final String teams;
  final String time;
  final String value;
  
  const CardBet({super.key, required this.img, required this.name, required this.description, required this.teams, required this.time, required this.value, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              avatar,
                height: 40,
                width: 40,
                fit: BoxFit.cover),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: const TextStyle(fontSize: 14),),
              Text(description, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text(teams, style: const TextStyle(fontSize: 10),),
                  const Icon(Icons.circle, size: 4,),
                  Text(time, style: const TextStyle(fontSize: 10),),
                ],
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(img,
              height: 40,
              width: 40,
              fit: BoxFit.cover),
              Text(value)
          ],)
        ],
      ),
    );
  }
}
