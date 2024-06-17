import 'package:flutter/material.dart';
import 'package:quiz_app/intro.dart';

class AppContainer extends StatelessWidget {
  const AppContainer(this.bgColor, {super.key});

  final Color bgColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: const Center(child: Intro()),
    );
  }
}
