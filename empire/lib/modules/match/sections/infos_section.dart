import 'package:flutter/material.dart';

class InfosSection extends StatelessWidget {
  const InfosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Informações do jogo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Premiere',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(
                width: 210,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 145,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              height: 32,
                              width: 61,
                              image: AssetImage('lib/images/paramount.png'),
                              fit: BoxFit.cover),
                          Text(
                            'Paramount',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF5D70A),
                        shape: BoxShape.circle,
                      ),
                      child: const SizedBox(
                        height: 15,
                        width: 15,
                        child: Icon(Icons.link),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: const Color.fromARGB(80, 138, 138, 138),
            height: 0.3,
            width: 300,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Data',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              Text('31/10/2023, 18:30')
            ],
          ),
          Container(
            color: Color.fromARGB(80, 138, 138, 138),
            height: 0.3,
            width: 300,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Estádio',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Morumbi - São Paulo',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Capacidade', style: TextStyle(fontSize: 10)),
                        Text('73,501',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12)),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            color: const Color.fromARGB(80, 138, 138, 138),
            height: 0.3,
            width: 300,
          ),
          SizedBox(
            height: 70,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Árbitro',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      'Média de cartões',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        width: 130,
                        child: Text(
                          'André Luiz Skettino Policarpo',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 73,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color.fromRGBO(245, 10, 10, 0.1),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "0.65",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image(
                                    height: 14,
                                    width: 9,
                                    image: AssetImage('lib/images/red.png'),
                                    fit: BoxFit.cover)
                              ],
                            ),
                          ),
                          Container(
                            width: 73,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color.fromRGBO(245, 215, 10, 0.1),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("1.32",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                Image(
                                    height: 14,
                                    width: 9,
                                    image: AssetImage('lib/images/yellow.png'),
                                    fit: BoxFit.cover)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(80, 138, 138, 138),
            height: 0.3,
            width: 300,
          ),
        ],
      ),
    );
  }
}
