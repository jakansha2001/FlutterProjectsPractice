import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.resultScore}) : super(key: key);

  final int resultScore;

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
      child: Text(
        '$resultPhase Your total score is: $resultScore',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
