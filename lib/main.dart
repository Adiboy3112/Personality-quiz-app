import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCoolAppState();
  }
}

class MyCoolAppState extends State<MyCoolApp> {
  var _index = 0;
  final _questions = const [
    {
      "ques": "what's  your favourite colour",
      "ans": [
        {'text': "Red", 'score': 9},
        {'text': "Blue", 'score': 7},
        {'text': "White", 'score': 10},
        {'text': "Green", 'score': 4}
      ],
    },
    {
      "ques": "what's your favourite animal",
      "ans": [
        {'text': "Rabbit", 'score': 7},
        {'text': "Dog", 'score': 8},
        {'text': "Cat", 'score': 10},
        {'text': "lion", 'score': 6}
      ],
    },
    {
      "ques": "what's your dream car",
      "ans": [
        {'text': "BMW", 'score': 9},
        {'text': "Audi", 'score': 8},
        {'text': "Maruti", 'score': 7},
        {'text': "Bentley", 'score': 10},
      ],
    },
  ];
  int _total = 0;
  void resetQuiz() {
    setState(() {
      _index = 0;
      _total = 0;
    });
  }

  void _answering(int score) {
    _total += score;
    setState(() {
      if (_index <= _questions.length)
        _index += 1;
      else
        print("Quiz Over");
    });

    print(_index);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("How much we have in common?"),
            ),
            body: _index < _questions.length
                ? Quiz(
                    questions: _questions,
                    answering: _answering,
                    index: _index,
                  )
                : Result(_total, resetQuiz)));
  }
}
