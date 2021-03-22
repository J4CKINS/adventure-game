import 'package:flutter/material.dart';
import '../classes/question.dart';

class Question1 extends QuestionState {
  Question1():super(text:"This is a test", images:[]);

  @override
  Widget buildControls() {
    return ElevatedButton(onPressed: (){}, child: Text("Test Button"));
  }
}