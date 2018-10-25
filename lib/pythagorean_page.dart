import 'package:flutter/material.dart';

class PythagoreanPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _PythagoreanPageState();
  }
}

class _PythagoreanPageState extends State<PythagoreanPage>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Pythagorean Theorem'),
      ),
    );
  }
}