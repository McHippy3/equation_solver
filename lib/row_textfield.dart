import 'package:flutter/material.dart';
import './distance_page.dart';

class RowTextFields extends StatelessWidget {
  String frontText, currentText;
  double widthText, widthTextField, fontSize;
  TextEditingController controller;
  TextField tf;

  RowTextFields(
      {this.frontText = '',
      this.widthText = 0.0,
      this.widthTextField = 0.0,
      this.fontSize = 24.0,
      this.controller});

  @override
  Widget build(BuildContext context) {
    tf = TextField(controller: controller);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(15.0),
          width: widthText,
          child: Center(
            child: Text(
              frontText,
              style: TextStyle(
                fontSize: fontSize,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          width: widthTextField,
          child: tf,
        ),
      ],
    );
  }
}
