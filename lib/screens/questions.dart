import 'package:flutter/material.dart';
import '../classes/question.dart';

class Question1 extends Question {
  Question1():super(text: "test", images: ["test.png"]);

  @override
  Widget BuildControls() {
    return Column(
      children: [
        ElevatedButton(onPressed: (){}, child: Text("Hello"),)
      ],
    );
  }
}