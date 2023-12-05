import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final void Function() onPressed;
  final Color colorBackground;
  final Color colorText;
  final BorderSide? borderSide;
  final String img;
  final String text;
  final double heightIcon;
  final double widhtIcon;
  final double heightButton;
  final double widhtButton;
  final double textSize;

  const ButtonIcon({
    super.key,
    required this.onPressed,
    required this.colorBackground,
    required this.colorText,
    this.borderSide,
    required this.img,
    required this.text,
    required this.heightIcon,
    required this.widhtIcon, required this.heightButton, required this.widhtButton, required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: colorBackground),
      child: SizedBox(
        width: widhtButton,
        height: heightButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                height: heightIcon,
                width: widhtIcon,
                image: AssetImage(img),
                fit: BoxFit.cover),
            Text(text,
                style: TextStyle(
                    color: colorText,
                    fontSize: textSize,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
