import 'package:flutter/material.dart';

abstract class Question extends StatelessWidget {

  Question choice;

  final String text;
  final List<String> images;

  Question({
    Key key,
    this.text,
    this.images,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text("Adventure Game", style: TextStyle(fontSize: 30),))),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column (
            children: [
              Padding(padding:EdgeInsets.only(top:60)),

              Text(text, style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),

              Padding(padding:EdgeInsets.only(top:10)),

              Row(children: [
                for (String image in images)
                Image(image: AssetImage(image), width: 100, height: 100)
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,),

              Padding(padding:EdgeInsets.only(top:60)),

              BuildControls(),

              Padding(padding:EdgeInsets.only(top:50)),

              ElevatedButton(onPressed: () {NextQuestion(context, choice);}, child: Padding(child: Text("Submit", style: TextStyle(fontSize: 20)), padding: EdgeInsets.all(10)))
            ],
          ),
        ),
      )
    );
  }

  Widget BuildControls();

  void NextQuestion(BuildContext context, Question question) {
    if (choice != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => question)
      );
    }
  }
}