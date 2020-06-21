import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/*
Only main function is executed when the app runs
In this case we are passing MyApp() class to render from main
*/
void main() {
  runApp(_MyApp());
}

/*
can use when only runApp() in main
void main() => runApp(MyApp());
*/

// craeting a stateful widget Myapp
class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// This class re rendered when the state changes
class MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;   
    });
  }
  // defining questions and corresponding answers
  final _questionAnswers = const [
    // 1
    {
      'questionText': 'What\'s the full form of MES?',
      'answers': [
        {'text': 'Mechanical engineering site', 'score': 0},
        {'text': 'Mole existance science', 'score': 0},
        {'text': 'Muslim Educational Society', 'score': 1},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    // 2
    {
      'questionText': 'What\'s the name of ambani\'s house?',
      'answers': [
        {'text': 'Antiquity', 'score': 0},
        {'text': 'Antilla', 'score': 1},
        {'text': 'Tesla', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    // 3
    {
      'questionText': 'What\'s the full form of COVID?',
      'answers': [
        {'text': 'Consumer Violation device', 'score': 0},
        {'text': 'Corona Virus Disease', 'score': 1},
        {'text': 'Capital of Violent District', 'score': 0},
        {'text': 'Coagulation Of Video', 'score': 0},
      ],
    },
    // 4
    {
      'questionText': 'Light year is a unit of?',
      'answers': [
        {'text': 'Distance', 'score': 1},
        {'text': 'Time', 'score': 0},
        {'text': 'Light', 'score': 0},
        {'text': 'Speed', 'score': 0},
      ],
    },
    // 5
    {
      'questionText': 'Which are the video chat platforms in the following',
      'answers': [
        {'text': 'Googe meet', 'score': 0},
        {'text': 'Webinar', 'score': 0},
        {'text': 'Jitsi meet', 'score': 0},
        {'text': 'All of the above', 'score': 1},
      ],
    },
    // 6
    {
      'questionText': 'How much memory is known as 1 MB?',
      'answers': [
        {'text': '1024 GB', 'score': 0},
        {'text': '1000 GB', 'score': 0},
        {'text': '1024 KB', 'score': 1},
        {'text': '1000 KB', 'score': 0},
        {'text': '1024 Bytes', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    // 7
    {
      'questionText':
          'You\'re 3rd place right now in a race.What place are you in when you pass the person in 2nd place?',
      'answers': [
        {'text': '1st', 'score': 0},
        {'text': '2nd', 'score': 1},
        {'text': '3rd', 'score': 0},
        {'text': 'None of the above.', 'score': 0},
      ],
    },
    // 8
    {
      'questionText': 'How many months have 28 days?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': 'All of them.', 'score': 1},
        {'text': 'Depends if there\'s a leap year or not.', 'score': 0},
      ],
    },
    // 9
    {
      'questionText': 'Which is the tallest mountain in the world?',
      'answers': [
        {'text': 'Mount kailash', 'score': 0},
        {'text': 'Sabarimala', 'score': 0},
        {'text': 'Ponmudi', 'score': 0},
        {'text': 'Mount everest', 'score': 1},
      ],
    },
    // 10
    {
      'questionText': 'Who killed Caeser of shakespere?',
      'answers': [
        {'text': 'Godse', 'score': 0},
        {'text': 'Veerappan', 'score': 0},
        {'text': 'Brutus', 'score': 1},
        {'text': 'ISIS', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // using conditional operator to find the end
        body: _questionIndex < _questionAnswers.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionAnswers: _questionAnswers,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
