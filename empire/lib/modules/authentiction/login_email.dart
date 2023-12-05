import 'package:empire/components/field.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/authentiction/authentication_controller.dart';
import 'package:flutter/material.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({super.key});

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  final authenticationController = getIt<AuthenticationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 250,
          margin: const EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 19.97,
                      height: 20.51,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/arrow_left.png'),
                          fit: BoxFit
                              .contain,
                        ),
                      ),
                    ),
                  )
                  ),
              Field(
                object: authenticationController.email,
                keybord: authenticationController.keyboardEmail,
                title: 'Qual o seu e-mail?',
                onPressed: () {
                  Navigator.pushNamed(context, '/login_password');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
