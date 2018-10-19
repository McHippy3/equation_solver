import 'package:flutter/material.dart';

class FormulaButton extends StatelessWidget{
  String buttonText;

  FormulaButton(this.buttonText);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RaisedButton(
      padding: const EdgeInsets.all(15.0),
      child: Text(buttonText),
      onPressed: (){},
    ),);
  }
}