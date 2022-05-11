import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selector;
  final String ans;
  Answer(this.selector, this.ans);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(ans),
          onPressed: () {
            selector();
            print("Option 1 chosen");
          }),
    );
  }
}
