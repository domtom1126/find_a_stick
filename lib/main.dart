import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your color', 'What\'s your animal'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            // This widget made in question.dart
            Question(questions[_questionIndex]),
            // answerQuestion is a pointer to the function named that
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 2')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3'))
          ],
        ),
      ),
    );
  }
}
