import 'package:empire/components/button.dart';
import 'package:empire/components/forms_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Field extends StatefulWidget {
  final TextEditingController object;
  final TextInputType keybord;
  final void Function() onPressed;
  final String title;

  const Field(
      {super.key,
      required this.object,
      required this.keybord,
      required this.title,
      required this.onPressed});

  @override
  State<Field> createState() => _LoginPageState();
}

class _LoginPageState extends State<Field> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.title,
                style: const TextStyle(
                  color: Color(0xFF070101),
                  fontSize: 24,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Observer(builder: (_) => FormsWidget(object: widget.object, keyboard: widget.keybord)),
            ),
            Button(
                onPressed: widget.onPressed,
                colorBackground: const Color(0xFFF5D70A),
                colorText: const Color(0xFF282C2A),
                text: 'Continuar',
                border: false,
                widthButton: 296,
                heightButton: 55),
          ],
        ),
      ),
    );
  }
}
