import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
