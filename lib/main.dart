// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [{'text': 'Black', 'score': 1}, 'Green', 'Red', 'Blue', 'Rainbow'],
    },
    {
      'questionText': 'What\'s your favorite platform?',
      'answers': ['PC', 'Xbox', 'Playstation'],
    },
    {
      'questionText': 'Light or Dark Theme?',
      'answers': ['Light', 'Dark'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
          backgroundColor: Colors.black87,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Result(),
      ),
    );
  }
}
