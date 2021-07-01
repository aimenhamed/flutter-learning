import 'package:flutter/material.dart';
// Files
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What is your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 2},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Green', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Bird', 'score': 5},
        {'text': 'Snake', 'score': 10},
        {'text': 'Fish', 'score': 1},
        {'text': 'Lion', 'score': 10}
      ],
    },
    {
      'questionText': 'Who has the best name?',
      'answers': [
        {'text': 'Tom', 'score': 1},
        {'text': 'Jim', 'score': 3},
        {'text': 'Bob', 'score': 10},
        {'text': 'Tim', 'score': 4}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("There are more questions.");
    } else {
      print('There are no more questions.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
