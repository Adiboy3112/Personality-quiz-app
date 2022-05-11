import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answering;
  final int index;
  Quiz({
    required this.questions,
    required this.answering,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[index]["ques"] as String,
        ),
        ...(questions[index]["ans"] as List<Map<String, Object>>).map((ans) {
          return Answer(() => answering(ans['score']), ans['text'] as String);
        }).toList()
      ],
    );
  }
}
