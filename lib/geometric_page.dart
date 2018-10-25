import 'package:flutter/material.dart';

class GeometricPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _GeometricPageState();
  }
}

class _GeometricPageState extends State<GeometricPage>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Geometric Sum'),
      ),
    );
  }
}