import 'package:flutter/material.dart';

// class FactsTeam extends StatelessWidget {
//   final List<String> listFacts = [
//     'Perdeu 6 jogos seguidos',
//     'Sequência de derrotas de 4 jogos em casa',
//     'Marcou apenas 1 gol nos últimos 4 jogos',
//     'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
//     'Vencem o primeiro tempo em 16% de suas partidas',
//     'Marcam 75% dos seus gols no segundo tempo',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: listFacts.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 listFacts[index],
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

class FactsTeam extends StatelessWidget {
  final List<String> listFacts = [
    'Perdeu 6 jogos seguidos',
    'Sequência de derrotas de 4 jogos em casa',
    'Marcou apenas 1 gol nos últimos 4 jogos',
    'Quando perdem por 1-0 fora, eles vencem 40% dos seus jogos',
    'Vencem o primeiro tempo em 16% de suas partidas',
    'Marcam 75% dos seus gols no segundo tempo',
  ];

  FactsTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: 230,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('5.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child:
                      Text(listFacts[4], style: const TextStyle(fontSize: 14)))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('6.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child:
                      Text(listFacts[5], style: const TextStyle(fontSize: 14)))
            ],
          ),
        ],
      ),
    );
  }
}
