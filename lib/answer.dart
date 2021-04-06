import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerLable;
  final Function answerQuestion;

  Answer(this.answerLable, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: ElevatedButton(
        child: Text(answerLable),
        onPressed: answerQuestion,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.lime.shade300),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
