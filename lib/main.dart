import 'package:flutter/material.dart';
import 'screens/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Game',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MenuScreen(),
    );
  }
}