import 'package:flutter/material.dart';
import 'questions.dart';

class MenuScreen extends StatelessWidget {

  final String _text = "Welcome to the Adventure Game\n\nYou will have to choose one of two answers on each question, there are different routes.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text("Adventure Game", style: TextStyle(fontSize: 30),))),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top:30)),
              Text(_text, style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
              Padding(padding: EdgeInsets.only(top:50)),
              ElevatedButton(autofocus: false, clipBehavior: Clip.none, child: Padding(padding: EdgeInsets.all(10), child: Text("Start", style:TextStyle(fontSize: 20, color: Colors.white)),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question1()));
              })
          ],),
        )
      ),
    );
  }
}