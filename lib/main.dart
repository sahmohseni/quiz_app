import 'package:flutter/material.dart';
import 'package:personal_quiz/result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questions = [
    {
      'questiontext': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 7},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 2}
      ]
    },
    {
      'questiontext': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 4},
        {'text': 'Horse', 'score': 2},
        {'text': 'Duck', 'score': 6},
        {'text': 'Snake', 'score': 8}
      ]
    },
    {
      'questiontext': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Pizza', 'score': 1},
        {'text': 'Pasta', 'score': 3},
        {'text': 'HotDog', 'score': 5},
        {'text': 'Burger', 'score': 7}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 184, 180, 180),
              title: Padding(
                padding: const EdgeInsets.all(105),
                child: Text(
                  'Personal Quiz App',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion)
                : Result(_totalScore, _resetQuiz)));
  }
}
