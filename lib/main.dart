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
      'answers': ['Red', 'Blue', 'Yellow', 'Green'],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': ['Bird', 'Snake', 'Fish', 'Lion'],
    },
    {
      'questionText': 'Who has the best name?',
      'answers': ['Tom', 'Jim', 'Bob', 'Tim'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
