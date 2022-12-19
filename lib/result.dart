import 'dart:ui';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const Result(this.resetHandler, {super.key, required this.totalScore});

  String get resultPhrase {
    String resultText;

    if (totalScore <= 8) {
      return resultText = 'You Awesome!';
    } else if (totalScore <= 12) {
      return resultText = 'You pretty Good';
    } else if (totalScore <= 16) {
      return resultText = 'You superr good';
    } else {
      return resultText = 'You so bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text("Reset Quiz"),
          ),
        ],
      ),
    );
  }
}
