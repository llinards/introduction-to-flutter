import 'package:flutter/material.dart';
import 'primary_btn.dart';
import 'logo.dart';
import 'main_title.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Logo(),
          const SizedBox(height: 30),
          const MainTitle('Learn Flutter'),
          const SizedBox(height: 30),
          PrimaryBtn('Start Quiz', startQuiz),
        ],
      ),
    );
  }
}
