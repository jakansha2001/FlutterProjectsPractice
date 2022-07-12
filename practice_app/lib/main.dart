import 'package:flutter/material.dart';
import 'package:practice_app/result.dart';

import 'quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
      totalScore += score;
      print('Total Score $totalScore');
    });
  }

  final questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 3},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 3}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 5},
        {'text': 'Max', 'score': 3},
        {'text': 'Max', 'score': 2},
        {'text': 'Max', 'score': 3}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
              )
            : Result(
                resultScore: totalScore,
              ),
      ),
    );
  }
}
