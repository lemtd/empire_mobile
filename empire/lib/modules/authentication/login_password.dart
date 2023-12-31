import 'package:empire/components/field.dart';
import 'package:empire/components/loading_modal.dart';
import 'package:empire/locator.dart';
import 'package:empire/modules/authentication/authentication_controller.dart';
import 'package:flutter/material.dart';

class LoginPassword extends StatelessWidget {
  const LoginPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticationController = getIt<AuthenticationController>();

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
                          image: AssetImage('assets/images/arrow_left.png'),
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
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) => const LoadingModal(),
                  );
                  if (await authenticationController.loginUser()) {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/home');
                  } else {
                    Navigator.of(context).pop();
                    print('Login error');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
