import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    try {
      return _MyAppState();
    } catch (error) {
      throw UnimplementedError();
    }
  }
}

class _MyAppState extends State<MyApp> {
  List<String> questions = [
    "What is your name?",
    "What is your age?",
    "Why do you exist?",
    "Why do i exist?"
  ];

  int _counter = 0;

  void _answerQuestions(int index) {
    setState(() {
      if (_counter != questions.length - 1) {
        _counter++;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Column(
            children: [
              Row(children: [
                Question(questions[_counter]),
              ]),
              ElevatedButton(
                  child: Text('Answer 1'),
                  onPressed: () => _answerQuestions(1)),
              ElevatedButton(
                  child: Text('Answer 2'),
                  onPressed: () => _answerQuestions(2)),
              ElevatedButton(
                  child: Text('Answer 3'),
                  onPressed: () => _answerQuestions(3)),
              ElevatedButton(
                  child: Text('Answer 4'),
                  onPressed: () => _answerQuestions(4)),
            ],
          )),
    );
  }
}
