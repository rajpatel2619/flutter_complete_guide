import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'fav color ?',
        'answers': ['black', 'red', 'green', 'white'],
      },
      {
        'questionText': 'fav animal ?',
        'answers': ['rabbit', 'snake', 'elephant', 'lion'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex]['questionText'],
              style: TextStyle(
                fontSize: 30,
              ),
            ),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
             return Answer(_answerQuestion,answer);
           }).toList()
          ],
        ),
      ),
    );
  }
}
