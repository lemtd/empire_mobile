import 'package:empire/locator.dart';
import 'package:empire/modules/authentication/authentication_controller.dart';
import 'package:flutter/material.dart';

class FormsWidget extends StatelessWidget {
  final TextEditingController object;
  final TextInputType keyboard;

  const FormsWidget({super.key, required this.object, required this.keyboard});

  @override
  Widget build(BuildContext context) {
    final _authenticationController = getIt<AuthenticationController>();

    return TextFormField(
      obscureText: keyboard == TextInputType.emailAddress
          ? false
          : _authenticationController.isObscure,
      cursorColor: const Color(0XFF6D6D6D),
      keyboardType: keyboard,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFF6D6D6D)),
          borderRadius: BorderRadius.all(
            Radius.circular(13),
          ),
        ),
        hintText: keyboard == TextInputType.emailAddress
            ? 'name@email.com'
            : 'password',
        labelStyle: const TextStyle(
          color: Color(0XFF6D6D6D),
          fontSize: 25,
        ),
        // suffixIcon: IconButton(
        //   icon: Icon(_authenticationController.isObscure
        //       ? Icons.visibility
        //       : Icons.visibility_off),
        //   onPressed: () {
        //     print('teste 1 ${_authenticationController.isObscure}');
        //     _authenticationController.changeValue();
        //   },
        // ),
      ),
      controller: object,
      style: const TextStyle(
        color: Color(0XFF6D6D6D),
      ),
      textAlign: TextAlign.start,
    );
  }
}
