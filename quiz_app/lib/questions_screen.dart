import 'package:flutter/material.dart';
import 'secondary_btn.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SecondaryBtn('Answer 1', () {}),
          SecondaryBtn('Answer 2', () {}),
          SecondaryBtn('Answer 3', () {}),
          SecondaryBtn('Answer 4', () {}),
        ],
      ),
    );
  }
}
