import 'package:flutter/material.dart';
import '../screens/question.dart';

class Questions
{
  static List<Question> questions() {
    return <Question>[
      
      // 1
      Question(
        text: "You find yourself within a jungle, it\'s turning dark, what should you do?",
        images: [AssetImage("test.png")],
        controls: <Widget>[
          ElevatedButton(onPressed: (){}, child: Text("Sleep")),
          Padding(padding:EdgeInsets.only(top:20), child:ElevatedButton(onPressed: (){}, child: Text("Get Moving"),))
        ],
      )
    ];
  }
}