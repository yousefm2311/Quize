// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:quize/answer.dart';
import 'package:quize/question.dart';
import 'package:quize/quize.dart';
import 'package:quize/result.dart';

void main() {
  runApp(const MyApp());
}
Color b=Colors.black;
Color w=Colors.white;
Color bl=Colors.blue;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  //Index Counter Question
  int questionIndex = 0;
  int _totleScore = 0;

  void restQuize() {
    setState(() {
      questionIndex = 0;
      _totleScore = 0;
    });
  }

//Function Button
  void anwserquestion(int score) {
    _totleScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

//List Question
  final List<Map<String, Object>> question = [
    {
      'questionText': 'What\'s your Favorite Color?',
      'answer': [
        {'test': 'Black', 'Score': 10},
        {'test': 'Yellow', 'Score': 20},
        {'test': 'Red', 'Score': 20},
        {'test': 'Blue', 'Score': 40}
      ]
    },
    {
      'questionText': 'What\'s your Favorite Animal?',
      'answer': [
        {'test': 'Loin', 'Score': 10},
        {'test': 'Tiger', 'Score': 20},
        {'test': 'Elephant', 'Score': 30},
        {'test': 'Rabbit', 'Score': 40},
      ]
    },
    {
      'questionText': 'What\'s your Favorite Film?',
      'answer': [
        {'test': '1', 'Score': 10},
        {'test': '2', 'Score': 20},
        {'test': '3', 'Score': 30},
        {'test': '4', 'Score': 40},
      ]
    },
  ];
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: w,
        appBar: AppBar(
          backgroundColor: bl,
          title:  Text("Quize App",style: TextStyle(color: w),),
          actions: [
            Switch(
              value: isSwitch,
              onChanged: (bool value) {
                setState(() {
                  isSwitch=value;
                  print(value);
                  if(isSwitch==true){
                    b=Colors.white;
                    w=Colors.black;
                    bl=Colors.blueGrey;
                  }
                  if(isSwitch==false){
                    b=Colors.black;
                    w=Colors.white;
                    bl=Colors.blue;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          child: questionIndex < question.length
              ? Quize(question, questionIndex, anwserquestion)
              : Result(restQuize, _totleScore),
        ),
      ),
    );
  }
}
