import 'package:flutter/material.dart';
import './row_textfield.dart';

class DistancePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _DistancePageState();
  }
}

class _DistancePageState extends State<DistancePage> {
  RowTextFields _x1 = RowTextFields(
      frontText: 'X1 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0);

  RowTextFields _y1 = RowTextFields(
      frontText: 'Y1 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0);

  RowTextFields _x2 = RowTextFields(
      frontText: 'X2 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0);

  RowTextFields _y2 = RowTextFields(
      frontText: 'Y2 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distance Formula'),
      ),
      body: ListView(children: <Widget>[
        _x1,
        _y1,
        _x2,
        _y2,
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: RaisedButton(
              child: Text('Calculate'),
              onPressed: calculate,
            ),
          ),
        ),
      ]),
    );
  }

  void calculate() {
    _x1.getValues();
  }
}
