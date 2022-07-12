import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; 
  final Function answerQuestion;
  final int questionIndex;

  const Quiz({Key? key, required this.questions, required this.answerQuestion, required this.questionIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questionText: (questions[questionIndex]['questionText']) as String),
            // for(int i=0; i<(questions[questionIndex]['answers'] as List<String>).length; i++) 
            //   Text((questions[questionIndex]['answers'] as List<String>)[i]),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              return Answer(selectHandler: () => answerQuestion(answer['score']), answerText: answer['text'] as String);},).toList()
          ],
        );
  }
}