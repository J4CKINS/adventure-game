import 'package:flutter/material.dart';
import '../classes/question.dart';

class Question1 extends Question {

  Question1():super(text: "You find yourself lost within a jungle, It\'s turning dark, what should you do?", images: []);

  @override
  Widget BuildControls() {
    return Column(
      children: [
        ElevatedButton(onPressed: (){ choice = Question3();}, child: Text("Sleep"),),
        Padding(padding: EdgeInsets.only(top:10, bottom:10)),
        ElevatedButton(onPressed: (){ choice = Question2();}, child: Text("Get Moving"),)
      ],
    );
  }
}

class Question2 extends Question {
  Question2():super(text:"You have decided to get moving, you stumble across a calm river, should you make a boat or follow the river by foot", images: []);

  @override
  Widget BuildControls() {
    return Column(children: [
    ]);
  }
}

class Question3 extends Question {

  Question3():super(text:"You find a stable tree and a sheltered area on the ground, where do you sleep?", images:[]);

  @override
  Widget BuildControls() {
    
    return Column(children: [
      ListTile(
        title: Text("Up in the tree"),
        leading: Radio(
          value: Question1(),
          groupValue: choice,
          onChanged: (Question value){choice = value;},
        ),
      ),
      ListTile(
        title: Text("Sheltered area"),
        leading: Radio(
          value: Question2(),
          groupValue: choice,
          onChanged: (Question value){choice = value;},
        ),
      )
    ]);
  }
}