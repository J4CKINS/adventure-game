import 'package:adventureapp/screens/question.dart';
import 'package:flutter/material.dart';
import 'screens/menu.dart';
import 'classes/questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Questions.questions()[0],
    );
  }
}