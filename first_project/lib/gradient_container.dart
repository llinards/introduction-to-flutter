import 'package:first_project/styled_title.dart';
import 'package:flutter/material.dart';

class GrandientContainer extends StatelessWidget {
  const GrandientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Color.fromARGB(255, 69, 19, 1)],
        ),
      ),
      child: const Center(
        child: StyledTitle(),
      ),
    );
  }
}
