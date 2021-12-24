// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize/question.dart';

import 'answer.dart';
class Quize extends StatelessWidget {
  final List<Map<String,Object>> question;
  int  questionIndex;
  final Function(int s) anwserquestion;
  Quize(this.question,this.questionIndex,this.anwserquestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answer'] as List<Map<String , Object>>).map((answer) {
          return Answer(() => anwserquestion(int.parse(answer['Score'].toString())),
              answer['test'].toString());
        }).toList(),
      ],
    );
  }
}
