import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetFunction;

  Result(this.totalScore, this.resetFunction);

  String get scoreText {
    if (totalScore < 10) {
      return 'You have done well';
    } else if (totalScore < 20) {
      return 'Not bad for a bignner';
    } else if (totalScore < 30) {
      return 'Now you are overshowing';
    } else {
      return 'Better luck next time';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            scoreText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetFunction,
              child: Text(
                "Click here to reset",
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
