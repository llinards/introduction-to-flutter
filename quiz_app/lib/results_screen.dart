import 'package:flutter/material.dart';
import 'data/questions.dart';
import 'primary_btn.dart';
import 'questions_summary.dart';
import 'main_title.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.finalAnswers, this.resetQuiz, {super.key});

  final List<String> finalAnswers;
  final void Function() resetQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < finalAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': finalAnswers[i],
      });
    }
    return summary;
  }

  String setEmoji(int correctQuestions) {
    if (correctQuestions == questions.length) {
      return '🥳';
    } else if (correctQuestions >= questions.length / 2) {
      return '😎';
    } else {
      return '😢';
    }
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;
    final emojiStatus = setEmoji(correctQuestions);

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainTitle(
                'You answered $correctQuestions out of $totalQuestions questions correctly. $emojiStatus'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            PrimaryBtn(
              'Restart Quiz',
              Icons.refresh,
              resetQuiz,
            ),
          ],
        ),
      ),
    );
  }
}
