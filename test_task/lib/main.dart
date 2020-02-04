import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        
        body: TestTask(),
      ),
    ),
  );
}

class TestTask extends StatefulWidget {
  @override
  _TestTaskState createState() => _TestTaskState();
}

class _TestTaskState extends State<TestTask> {

  List<Color> colorsOfScreen = [
    Colors.white, Colors.yellow,
    Colors.red,  Colors.amber,
    Colors.greenAccent, Colors.orange, Colors.cyanAccent,
    Colors.cyan, Colors.green, Colors.grey,
    Colors.teal, Colors.blue,
  ];

  int selectedRandomNumber = 1;

  Color setColor(){
    if( selectedRandomNumber >= 7 ){
      return Colors.white;
    }else{
      return Colors.black;
    }
  }

  String selectedFont(){
    int fontNumber = Random().nextInt(3)+1;
    return 'Font$fontNumber';
  }

  Color changeColor(){
    selectedRandomNumber = Random().nextInt(colorsOfScreen.length);
    return colorsOfScreen[selectedRandomNumber];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: FlatButton(
        color: changeColor(),
        onPressed: (){
          setState(() {
          });
        },
        child: Text('Hey there',style: TextStyle(color: setColor(),fontSize: 10.0*selectedRandomNumber+6,fontFamily: selectedFont(), ),),
      ),
    );
  }
}
