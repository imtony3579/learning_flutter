import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHnadler;
  final String AnswerText;

  Answer(this.selectHnadler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
            foregroundColor: MaterialStateProperty.all(Colors.black)),
        child: Text(AnswerText),
        onPressed: selectHnadler,
      ),
    );
  }
}
