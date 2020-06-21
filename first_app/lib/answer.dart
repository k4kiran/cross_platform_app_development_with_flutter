/* Widget for answer buttons */

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestionPointer;
  final String answerText;

  // Calling the constructor to initialize function
  Answer(this.answerQuestionPointer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: answerQuestionPointer,
      ),
    );
  }
}
