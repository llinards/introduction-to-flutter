import 'package:flutter/material.dart';

class StyledTitle extends StatelessWidget {
  const StyledTitle({super.key});
  @override
  Widget build(context) {
    return const Text(
      'Hello World.',
      style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
