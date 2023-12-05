import 'package:empire/components/button_icon.dart';
import 'package:flutter/material.dart';

class CardTip extends StatelessWidget {
  final String img;
  final String description;
  final String title;
  
  const CardTip({super.key, required this.img, required this.description, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 10, 10, 10).withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      width: 275,
      height: 410,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: Image.network(img,
                height: 141,
                width: 275,
                fit: BoxFit.cover),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 165,
                width: 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    Text(description,
                      style: const TextStyle(fontSize: 10),),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonIcon(
                    onPressed: () {},
                    colorBackground: const Color.fromARGB(255, 255, 255, 255),
                    colorText: Colors.black,
                    img: 'assets/images/soccer.png',
                    text: 'Futebol',
                    heightIcon: 16,
                    widhtIcon: 16,
                    widhtButton: 80,
                    heightButton: 29,
                    textSize: 10,
                  ),
                  ButtonIcon(
                    onPressed: () {},
                    colorBackground: Color.fromARGB(255, 255, 255, 255),
                    colorText: Colors.black,
                    img: 'assets/images/basket.png',
                    text: 'Basquete',
                    heightIcon: 16,
                    widhtIcon: 16,
                    widhtButton: 80,
                    heightButton: 29,
                    textSize: 10,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
