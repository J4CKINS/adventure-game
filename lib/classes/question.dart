import 'package:flutter/material.dart';

class Question extends StatefulWidget {

  final QuestionState state;
  Question({Key key, this.state}):super(key: key);

  @override
  QuestionState createState() => state;
}

abstract class QuestionState extends State<Question> {

  String text;
  List<String> images;
  Widget choice;

  QuestionState({this.text, this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text("Adventure Game", style: TextStyle(fontSize: 30),))),
      body:Container(
        padding: EdgeInsets.all(10),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text, style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
            
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              for(String image in images)
              Image(image: AssetImage(image), width: 150, height: 150,)
            ]),

            buildControls(),

            ElevatedButton(autofocus: false, clipBehavior: Clip.none, child: Padding(padding: EdgeInsets.all(10), child: Text("Submit", style:TextStyle(fontSize: 20, color: Colors.white)),),
            onPressed: (){
              submit();
            })

        ])
      )
    );
  }

  Widget buildControls();

  void submit() {
    if (choice != null) {
      navigateTo(choice);
    }
  }

  void navigateTo(Widget page) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page)
    );
  }
}