import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final List<Map<String, String>> textToList;
  final VoidCallback incrementFunction;
  final int incrementNumber;

  TextControl(
      {required this.textToList,
      required this.incrementFunction,
      required this.incrementNumber});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textToList[incrementNumber]['text'] as String,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, onPrimary: Colors.white),
              onPressed: incrementFunction,
              child: Text('Click to change the Text'))
        ],
      ),
    );
  }
}
