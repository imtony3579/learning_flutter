// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './textcontrol.dart';

void main() => runApp(FirstAssignment());

class FirstAssignment extends StatefulWidget {
  const FirstAssignment({Key? key}) : super(key: key);

  @override
  _FirstAssignmentState createState() => _FirstAssignmentState();
}

class _FirstAssignmentState extends State<FirstAssignment> {
  final List<Map<String, String>> _textList = [
    {'text': 'First Statement'},
    {'text': 'Second Statment'},
    {'text': 'third statment'},
    {'text': 'Fourth Statment'}
  ];

  int _incrementNumber = 0;

  void _changeIncremetNumber() {
    setState(() {
      if (_incrementNumber < 3) {
        _incrementNumber += 1;
      } else {
        _incrementNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Text switch APP"),
            backgroundColor: Colors.red,
            centerTitle: true,
          ),
          body: TextControl(
              textToList: _textList,
              incrementFunction: _changeIncremetNumber,
              incrementNumber: _incrementNumber)),
    );
  }
}
