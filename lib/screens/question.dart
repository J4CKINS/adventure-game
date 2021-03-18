import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String text;
  final List<AssetImage> images;
  final List<Widget> controls;

  Question({
    Key key,
    this.text,
    this.images,
    this.controls
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child:Text("Adventure Game", style: TextStyle(fontSize: 30),))),
      body: Center(
        child: Container(
          child: Column (
            children: [
              Text(text),

              Row(children: [
                for (AssetImage image in images)
                Image(image: image,)
              ],),

              Column(children: [
                for (Widget control in controls)
                control, 
                
              ],)
            ],
          ),
        ),
      )
    );
  }
}