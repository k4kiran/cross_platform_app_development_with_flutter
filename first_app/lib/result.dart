import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizPointer;
  Result(this.resultScore, this.resetQuizPointer);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 2) {
      resultText = '        Your Score = $resultScore \n Better luck next time';
    } else if (resultScore <= 5) {
      resultText = '        Your Score = $resultScore \n You need improvement';
    } else if (resultScore <= 8) {
      resultText = '        Your Score = $resultScore \n Good Score Keep it up';
    } else {
      resultText = '        Your Score = $resultScore \n You are a Genius!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    print("Questions Exhausted");
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          FlatButton(
            child: Text('Reset Quiz'),
            onPressed: resetQuizPointer,
            textColor: Colors.blue,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
