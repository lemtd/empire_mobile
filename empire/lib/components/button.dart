import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function() onPressed;
  final Color colorBackground;
  final Color colorText;
  final String text;
  final bool border;
  final Color? borderColor;
  final double widthButton;
  final double heightButton;

  const Button(
      {super.key,
      required this.onPressed,
      required this.colorBackground,
      required this.colorText,
      required this.text,
      required this.border,
      this.borderColor, required this.widthButton, required this.heightButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  width: widthButton,
                  height: heightButton,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: border ? ElevatedButton.styleFrom(
                      backgroundColor: colorBackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: const BorderSide(color: Color(0xFF505854),),
                      ),
                    ) : ElevatedButton.styleFrom(
                      backgroundColor: colorBackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(text,
                            style: TextStyle(
                                color: colorText,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),),
                  ),
                );
  }
}
