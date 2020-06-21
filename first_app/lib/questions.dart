// Widget for questions 
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // constructor to initialize current question to this widget
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
