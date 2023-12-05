import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final String label;
  final bool isSelected;

  MenuButton({required this.label, required this.isSelected});

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        primary: widget.isSelected ? Colors.white : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        widget.label,
        style: TextStyle(
          color: widget.isSelected ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}