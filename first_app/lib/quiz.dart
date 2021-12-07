import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionChoiceList;
  final int indexValue;
  final Function answerFunction;

  Quiz({
    required this.questionChoiceList,
    required this.indexValue,
    required this.answerFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(questionChoiceList[indexValue]['question'] as String),
        ...(questionChoiceList[indexValue]['answer']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerFunction(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
