import 'package:flutter/material.dart';
import './row_textfield.dart';

class DistancePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _DistancePageState();
  }
}

class _DistancePageState extends State<DistancePage> {
  static TextEditingController x1controller = TextEditingController();
  static TextEditingController y1controller = TextEditingController();
  static TextEditingController x2controller = TextEditingController();
  static TextEditingController y2controller = TextEditingController();

  String answer = '';

  RowTextFields _x1 = RowTextFields(
    frontText: 'X1 =',
    widthText: 100.0,
    widthTextField: 250.0,
    fontSize: 24.0,
    controller: x1controller,
  );

  RowTextFields _y1 = RowTextFields(
    frontText: 'Y1 =',
    widthText: 100.0,
    widthTextField: 250.0,
    fontSize: 24.0,
    controller: y1controller,
  );

  RowTextFields _x2 = RowTextFields(
    frontText: 'X2 =',
    widthText: 100.0,
    widthTextField: 250.0,
    fontSize: 24.0,
    controller: x2controller,
  );

  RowTextFields _y2 = RowTextFields(
    frontText: 'Y2 =',
    widthText: 100.0,
    widthTextField: 250.0,
    fontSize: 24.0,
    controller: y2controller,
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distance Formula'),
      ),
      body: ListView(
        children: <Widget>[
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
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Text(answer, style: TextStyle(fontSize: 32.0)),
            ),
          ),
        ],
      ),
    );
  }

  void calculate() {
    try{

    }
    catch(Exception){
      print('Error');
    }
    setState(() {});
  }

  @override
  void dispose(){
    x1controller.dispose();
    y1controller.dispose();
    x2controller.dispose();
    y2controller.dispose();
  }
}
