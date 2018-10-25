import 'package:flutter/material.dart';

class ArithmeticPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _ArithmeticPageState();
  }
}

class _ArithmeticPageState extends State<ArithmeticPage>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Sum'),
      ),
    );
  }
}