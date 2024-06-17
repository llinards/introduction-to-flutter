import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Image.asset(
        'assets/images/quiz-logo.png',
        width: 150,
      ),
    );
  }
}
