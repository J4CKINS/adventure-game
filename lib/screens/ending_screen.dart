import 'package:flutter/material.dart';
import 'questions.dart';
import 'menu.dart';
import '../classes/question.dart';

class EndingScreen extends StatelessWidget {

  final String text;
  final String medal;

  EndingScreen({Key key, this.text, this.medal}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text("Adventure Game", style: TextStyle(fontSize: 30),))),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            if(medal != null)
            Image(image: AssetImage(medal), width: 250, height:250),

            Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20
                ),  
              ),



            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
              ElevatedButton(child: Padding(padding: EdgeInsets.all(10), child: Text("Share")), onPressed: (){

              }),

              ElevatedButton(child: Padding(padding: EdgeInsets.all(10), child: Text("Retry")), onPressed: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Question(state:Question1())));
              }),

              ElevatedButton(child: Padding(padding: EdgeInsets.all(10), child: Text("Menu")), onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MenuScreen()));
              }),
            ])
          ],
        ),
      )
    );
  }
}