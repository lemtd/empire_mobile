import 'package:empire/components/field.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/authentiction/auth_service.dart';
import 'package:empire/modules/authentiction/authentication_controller.dart';
import 'package:flutter/material.dart';

class LoginPassword extends StatelessWidget {
  const LoginPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticationController = getIt<AuthenticationController>();
    final AuthService authService = AuthService();

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
                          image: AssetImage('lib/images/arrow_left.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )),
              Field(
                object: authenticationController.password,
                keybord: authenticationController.keyboardPassword,
                title: 'Qual sua senha?',
                onPressed: () async {
                  await authService.login(authenticationController.email.text, authenticationController.password.text);
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
