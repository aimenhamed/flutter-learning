import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

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
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
