import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.resultScore, required this.resetQuiz})
      : super(key: key);

  final int resultScore;
  final VoidCallback resetQuiz;

  String get resultPhase {
    if (resultScore <= 10) {
      return 'You are Awesome!';
    } else if (resultScore <= 20) {
      return 'You are strange!';
    } else {
      return 'You are Bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            '$resultPhase Your total score is: $resultScore',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            onPressed: resetQuiz,
            child: const Text(
              'Reset Quiz',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
