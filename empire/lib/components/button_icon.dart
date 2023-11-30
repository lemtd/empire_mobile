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

  const ButtonIcon({
    super.key,
    required this.onPressed,
    required this.colorBackground,
    required this.colorText,
    this.borderSide,
    required this.img,
    required this.text,
    required this.heightIcon,
    required this.widhtIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: colorBackground),
      child: SizedBox(
        width: 298,
        height: 56,
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
                    fontSize: 13,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
