import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // on press needs to be _answerQuestion
      child: ElevatedButton(onPressed: null, child: Text('Answer 1')),
    );
  }
}
