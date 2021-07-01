import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are hectic.';
    } else if (resultScore <= 12) {
      resultText = 'You are semi-hectic.';
    } else if (resultScore <= 16) {
      resultText = 'You are not hectic';
    } else {
      resultText = 'You are anti-hectic';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz',
            ),
            style: TextButton.styleFrom(
              primary: Colors.blue,
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
