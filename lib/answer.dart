import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
  Answer(this.answerText, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 320,
      child: RaisedButton(
          elevation: 0,
          color: Color.fromARGB(255, 252, 203, 57),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10000)),
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}
