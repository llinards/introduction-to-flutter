import 'package:flutter/material.dart';
import 'package:quiz_app/primary_btn.dart';
import 'logo.dart';
import 'main_title.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Logo(),
          SizedBox(height: 30),
          MainTitle('Learn Flutter'),
          SizedBox(height: 30),
          PrimaryBtn('Start Quiz')
        ],
      ),
    );
  }
}
