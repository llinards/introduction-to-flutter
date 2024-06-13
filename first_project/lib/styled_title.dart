import 'package:flutter/material.dart';

class StyledTitle extends StatelessWidget {
  const StyledTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
