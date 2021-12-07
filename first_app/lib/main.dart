import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = const [
    {
      'question': 'What\'s your favorite colore!',
      'answer': [
        {'text': 'Black', 'score': 0},
        {'text': 'greeen', 'score': 20},
        {'text': 'maroon', 'score': 30},
        {'text': 'Red', 'score': 40}
      ]
    },
    {
      'question': 'what\'s your favorite animal!',
      'answer': [
        {'text': 'dog', 'score': 0},
        {'text': 'cat', 'score': 20},
        {'text': 'rat', 'score': 30}
      ]
    },
    {
      'question': 'what\'s your favorite snacks!',
      'answer': [
        {'text': 'coco', 'score': 0},
        {'text': 'coke', 'score': 20},
        {'text': 'snacks', 'score': 30}
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void _resetPara() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int Score) {
    totalScore += Score;
    setState(() {
      questionIndex += 1;
    });
    if (questionIndex < questions.length) {
      print("We have more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My title'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questionChoiceList: questions,
                indexValue: questionIndex,
                answerFunction: answerQuestion)
            : Result(totalScore, _resetPara),
      ),
    );
  }
}
