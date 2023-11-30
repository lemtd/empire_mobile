import 'package:empire/components/button.dart';
import 'package:empire/components/button_icon.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          height: 400,
                          width: 400,
                          image: AssetImage('lib/images/img_initial.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const Positioned(
                    bottom: 45,
                    left: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entre',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'em sua conta',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Acompanhe seus jogos,',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        Text(
                          'campeonatos e times favoritos',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 400,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Column(
                  children: [
                    ButtonIcon(
                      onPressed: () {},
                      colorBackground: Color(0xFFE6E6E6),
                      colorText: Color(0xFF000000),
                      img: 'lib/images/g.png',
                      text: 'Entrar com Google',
                      heightIcon: 24,
                      widhtIcon: 24,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonIcon(
                      onPressed: () {},
                      colorBackground: Color(0xFF000000),
                      colorText: Color(0xFFFFFFFF),
                      img: 'lib/images/apple.png',
                      text: 'Entrar com Apple',
                      heightIcon: 24,
                      widhtIcon: 20.22,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 138, 138, 138),
                      height: 0.3,
                      width: 120,
                    ),
                    const Text(
                      'ou entre com',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 138, 138, 138),
                      height: 0.3,
                      width: 120,
                    ),
                  ],
                ),
                SizedBox(
                  width: 325,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                        onPressed: () {},
                        colorBackground: Colors.white,
                        colorText: Color(0xFF505854),
                        text: 'Email',
                        border: true,
                        borderColor: const Color(0xFF505854),
                      ),
                      Button(
                        onPressed: () {},
                        colorBackground: Color(0xFFF5D70A),
                        colorText: Color(0xFF282C2A),
                        text: 'Telefone',
                        border: false,
                      ),
                    ],
                  ),
                )
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
