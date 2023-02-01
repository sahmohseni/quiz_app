import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (resultScore < 10 && resultScore >= 0) {
      resultText = 'You are good person';
    } else if (resultScore < 20 && resultScore >= 10) {
      resultText = 'You are normal person';
    } else {
      resultText = 'You are bad person';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text(resultPhrase,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center),
        ),
        RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10000)),
            elevation: 0,
            color: Color.fromARGB(255, 67, 179, 227),
            child: Text('Reset Quiz'),
            onPressed: resetHandler)
      ],
    ));
  }
}
