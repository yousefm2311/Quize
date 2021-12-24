// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;
  const Answer(this.x,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: x,
        child: Text(answerText,style: const TextStyle(fontSize: 20),),
        color: bl,
        textColor: Colors.white,
      ),
    );
  }
}
