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

  QuestionState({this.text, this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text("Adventure Game", style: TextStyle(fontSize: 30),))),
      body:Container(
        child:Column(children: [
          Text(text),
          
          Row(children: [
            for(String image in images)
            Image(image: AssetImage(image),)
          ]),

          buildControls()

        ])
      )
    );
  }

  Widget buildControls();
}