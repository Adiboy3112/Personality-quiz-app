import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Questions extends StatelessWidget {
  @override
  String ques;
  Questions(this.ques);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        ques,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
