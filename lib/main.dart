import 'package:flutter/material.dart';
// Files
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = [
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

    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questions[_questionIndex]['questionText'].toString(),
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('Finished'),
              ),
      ),
    );
  }
}
