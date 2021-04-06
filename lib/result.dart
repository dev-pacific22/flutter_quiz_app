import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  String get resultPhrase {
    String resultText;
    if (totalScore <= 10) {
      resultText = 'You are awesome';
    } else if (totalScore <= 15) {
      resultText = 'You are good';
    } else if (totalScore <= 20) {
      resultText = 'You are ...starnge';
    } else {
      resultText = 'You are so bad, sudhar jao!!';
    }

    return resultText;
  }

  Result(this.totalScore, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(onPressed: resetQuiz, child: Text('Reset Quiz'))
        ],
      ),
    );
  }
}
