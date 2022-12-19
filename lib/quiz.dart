import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int indexQuestion;
  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestion,
      required this.indexQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question: questions[indexQuestion]["questionText"] as String,
        ),
        ...(questions[indexQuestion]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              selectHandler: () => answerQuestion(answer["score"]),
              answer: answer["text"] as String);
        }).toList(),
      ],
    );
  }
}
