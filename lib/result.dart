// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

import 'main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 80) {
      resultText = ('Your Score Is Good Job!');
    } else if (resultScore >= 50) {
      resultText = ("Your Score Is Good !");
    } else {
      resultText = ("Your Score Is Bad");
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your Score is $resultScore",
            style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: b),
          ),
          Text(
            resultPhrase,
            style:  TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child:  Text(
              "Restart App ",
              style: TextStyle(fontSize: 30, color: bl),
            ),
            onPressed: q,
          )
        ],
      ),
    );
  }
}
