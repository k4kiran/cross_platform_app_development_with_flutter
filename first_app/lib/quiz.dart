import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionAnswers;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questionAnswers,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    if (questionIndex < questionAnswers.length) {
      int outputQuestionNumber = questionIndex + 1;
      print("This is the question number $outputQuestionNumber");
      int remainingQuestions = (questionAnswers.length - questionIndex) - 1;
      print("$remainingQuestions questions to go");
    }
    return Column(
      // calling the constructor to initialize current question
      children: [
        Question(questionAnswers[questionIndex]['questionText']),
        // Creating 3 answer buttons with onpressed function
        // ...(spread operator) is used to unlist a list
        ...(questionAnswers[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
