// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
class Question extends StatelessWidget {
  final questionText;

  Question( this.questionText, {Key? key}) : super(key: key) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style:  TextStyle(
          color: b,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
