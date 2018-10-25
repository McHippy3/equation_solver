import 'package:flutter/material.dart';

class QuadraticPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _QuadraticPageState();
  }
}

class _QuadraticPageState extends State<QuadraticPage>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Quadratic Formula'),
      ),
    );
  }
}