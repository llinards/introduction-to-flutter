import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn(this.text, this.btnIcon, this.onPressed, {super.key});

  final String text;
  final IconData btnIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      // icon: const Icon(Icons.play_arrow),
      icon: Icon(btnIcon),
      label: Text(text),
    );
  }
}
