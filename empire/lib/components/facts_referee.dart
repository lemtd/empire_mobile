import 'package:flutter/material.dart';

class FactsReferee extends StatelessWidget {
  final List<String> listFacts = [
    'Marcou cartão amarelo em todos os seus últimos 10 jogos',
    'Marca 80% mais cartões no segundo tempo',
    'Não deu nenhum cartão vermelho nos últimos 5 jogos',
    'Marcou 3 penaltis nos últimos 3 jogos'
  ];

  FactsReferee({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('1.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child:
                      Text(listFacts[0], style: const TextStyle(fontSize: 14)))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('2.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child:
                      Text(listFacts[1], style: const TextStyle(fontSize: 14)))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('3.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child:
                      Text(listFacts[2], style: const TextStyle(fontSize: 14)))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('4.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child:
                      Text(listFacts[3], style: const TextStyle(fontSize: 14)))
            ],
          ),
        ],
      ),
    );
  }
}
