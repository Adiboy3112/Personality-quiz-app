import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  final VoidCallback selector;
  Result(this.totalscore, this.selector);
  String get resultphrase {
    String resulttext = "Your score is " + (totalscore.toString()) + "! ";
    if (totalscore >= 27) {
      resulttext += "Maybe you and me are not so different!";
    } else if (totalscore >= 23) {
      resulttext += "Oof we have a lot in common!";
    } else if (totalscore >= 18) {
      resulttext += "Maybe we have something in common!";
    } else {
      resulttext = "We are quite the opposite bruh!";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultphrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(onPressed: selector, child: Text("Try Again"))
      ]),
    );
  }
}
