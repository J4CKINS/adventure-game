import 'package:flutter/material.dart';
import '../classes/question.dart';
import '../classes/question.dart';
import '../classes/question.dart';

class Question1 extends QuestionState {
  Question1():super(text:"You find yourself lost within a jungle, it\'s turning dark, what should you do?", images:[]);

  @override
  Widget buildControls() {
    return Column(children:[
      ElevatedButton(autofocus: false, clipBehavior: Clip.none, child: Padding(padding: EdgeInsets.all(10), child: Text("Sleep", style:TextStyle(fontSize: 20, color: Colors.white)),),
      onPressed: (){
        choice = Question3();
      }),

      Padding(padding: EdgeInsets.only(top:10),),

      ElevatedButton(autofocus: false, clipBehavior: Clip.none, child: Padding(padding: EdgeInsets.all(10), child: Text("Get Moving", style:TextStyle(fontSize: 20, color: Colors.white)),),
      onPressed: (){
        setState(() {
          choice = Question2();
        });
      }),

    ]);
  }
}

class Question2 extends QuestionState {
  Question2():super(text:"You have decided to get moving, you stumble across a calm river, should you make a boat or follow the river by foot", images: []);

  @override
  Widget buildControls() {
    return Column(children: [
      ListTile(
        title:Text("Boat"),
        leading: Checkbox(
          value: true,
          onChanged: (value){
            setState(() {
              
            });
          },
        ),
      ),
      
      ListTile(
        title:Text("Foot"),
        leading: Checkbox(
          value: true,
          onChanged: (value){
            setState(() {
              
            });
          },
        ),
      )
    ]);
  }
}

class Question3 extends QuestionState {
  int radioChoice;
  List<QuestionState> choices = [Question1(), Question2()];

  Question3():super(text:"You find a stable tree and a sheltered area on the ground, where do you sleep?", images: []);

  @override
  Widget buildControls() {
    return Column(children: [
      ListTile(
        title: Text("Up in the tree"),
        leading: Radio(
          value: 0,
          groupValue: radioChoice,
          onChanged: (value) {
            setState(() {
              radioChoice = value;
              choice = choices[value];
            });
          },
        ),
      ),

      ListTile(
        title: Text("Sheltered area"),
        leading: Radio(
          value: 1,
          groupValue: radioChoice,
          onChanged: (value) {
            setState(() {
              radioChoice = value;
              choice = choices[value];
            });
          },
        ),
      )
    ]);
  }
}