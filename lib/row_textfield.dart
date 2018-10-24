import 'package:flutter/material.dart';

class RowTextFields extends StatelessWidget{
  String frontText;
  double widthText, widthTextField, fontSize;
  static TextEditingController controller = TextEditingController();
  TextField tf = TextField(controller: controller,);

  RowTextFields({this.frontText = '', this.widthText = 0.0, this.widthTextField = 0.0, this.fontSize = 24.0} );

  @override
  Widget build (BuildContext context){
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

  String getValues(){
    print(controller.text);
  }
}