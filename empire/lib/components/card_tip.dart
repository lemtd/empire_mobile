import 'package:empire/components/button_icon.dart';
import 'package:flutter/material.dart';

class CardTip extends StatelessWidget {
  final String img;
  
  const CardTip({super.key, required this.img,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 10, 10, 10).withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      width: 275,
      height: 340,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: Image(
                height: 141,
                width: 275,
                image: AssetImage(img),
                fit: BoxFit.cover),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 140,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Explore as melhores práticas ...'),
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
                    img: 'lib/images/soccer.png',
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
                    img: 'lib/images/basket.png',
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
