import 'package:adventureapp/screens/ending_screen.dart';
import 'package:flutter/material.dart';
import '../classes/question.dart';
import '../classes/game_text.dart';

class Question1 extends QuestionState {
  Question1():super(text:GameText.question1, images:["sleeping.png", "running_person.png"]);

  @override
  Widget buildControls() {
    return Column(children:[
      ElevatedButton(autofocus: false, clipBehavior: Clip.none, child: Padding(padding: EdgeInsets.all(10), child: Text("Sleep", style:TextStyle(fontSize: 20, color: Colors.white)),),
      onPressed: (){
        choice = Question(state: Question3());
      }),

      Padding(padding: EdgeInsets.only(top:10),),

      ElevatedButton(autofocus: false, clipBehavior: Clip.none, child: Padding(padding: EdgeInsets.all(10), child: Text("Get Moving", style:TextStyle(fontSize: 20, color: Colors.white)),),
      onPressed: (){
        setState(() {
          choice = Question(state: Question2());
        });
      }),

    ]);
  }
}

class Question2 extends QuestionState {
  Question2():super(text:GameText.question2, images: []);
  bool checkboxChoice = true;

  @override
  void initState() {
    choice = Question(state: Question4());
    super.initState();
  }

  @override
  Widget buildControls() {
    return Column(children: [
      ListTile(
        title:Text("Boat"),
        leading: Checkbox(
          value: checkboxChoice,
          onChanged: (value){
            setState(() {
              checkboxChoice = !checkboxChoice;
              if (checkboxChoice){ choice = Question(state: Question4(),); }
              else {choice = Question(state: Question5(),);}
            });
          },
        ),
      ),
      
      ListTile(
        title:Text("Foot"),
        leading: Checkbox(
          value: !checkboxChoice,
          onChanged: (value){
            setState(() {
              checkboxChoice = !checkboxChoice;
              if (checkboxChoice){ choice = Question(state: Question4(),); }
              else {choice = Question(state: Question5(),);}
            });
          },
        ),
      )
    ]);
  }
}

class Question3 extends QuestionState {
  int radioChoice;
  List<QuestionState> choices = [Question6(), Question5()];

  Question3():super(text:GameText.question3, images: []);

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
              choice = Question(state: choices[value],);
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
              choice = Question(state: choices[value],);
            });
          },
        ),
      )
    ]);
  }
}

class Question4 extends QuestionState {
  Question4():super(text: GameText.question4, images:[]);

  @override
  Widget buildControls() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      ElevatedButton(onPressed: (){ navigateTo(EndingScreen(text: GameText.ending2, medal: "bronze_medal.png",)); }, child: Image(image: AssetImage('small_raft.jpg'), width: 150, height: 150,)),
      ElevatedButton(onPressed: (){ navigateTo(EndingScreen(text: GameText.ending1)); }, child: Image(image: AssetImage('large_raft.jpg'), width: 150, height: 150,))
    ],);
  }
}

class Question5 extends QuestionState {
  double sliderValue = .5;
  List<EndingScreen> choices = [
    EndingScreen(text: GameText.ending3,medal: "silver_medal.png"),
    EndingScreen(text: GameText.ending3,medal: "bronze_medal.png"),
  ];

  Question5():super(text:GameText.question5, images:["running_person.png", "fighting_person.png"]);

  @override
  Widget buildControls() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Text("Run", textAlign: TextAlign.center,),
      Slider(
        value: sliderValue,
        min:0,
        max:1,
        divisions: 2,
        onChanged: (double value) {
          setState(() {
            sliderValue = value;
            if (value != 0.5) {
            choice = choices[value.toInt()];
            }
          });
          print(value);
        },
      ),
      Text("Fight", textAlign: TextAlign.center)
    ],);
  }
}

class Question6 extends QuestionState {
  bool switchValue = false;

  Question6():super(text:GameText.question6, images:["torch.jpeg"]);

  @override
  Widget buildControls() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Off", textAlign: TextAlign.center),
    
      Switch(
        value: switchValue,
        onChanged: (bool value) {
          setState(() {
            switchValue = value;
            if (value) {
              choice = EndingScreen(text: GameText.ending4, medal:"gold_medal.png");
            }else {
              choice = EndingScreen(text: GameText.ending3, medal:"silver_medal.png");
            }
          });
        },
      ),
      Text("On", textAlign: TextAlign.center),
    ]);
  }
}