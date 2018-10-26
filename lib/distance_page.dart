import 'package:flutter/material.dart';
import './row_textfield.dart';
import 'dart:math';

class DistancePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _DistancePageState();
  }
}

class _DistancePageState extends State<DistancePage> {

  TextEditingController x1controller = TextEditingController();
  TextEditingController y1controller = TextEditingController();
  TextEditingController x2controller = TextEditingController();
  TextEditingController y2controller = TextEditingController();
  RowTextFields _x1, _y1, _x2, _y2;
  String answer = '';

  _DistancePageState(){
    _x1 = RowTextFields(
      frontText: 'X1 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: x1controller,
    );
    _y1 = RowTextFields(
      frontText: 'Y1 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: y1controller,
    );
    _x2 = RowTextFields(
      frontText: 'X2 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: x2controller,
    );
    _y2 = RowTextFields(
      frontText: 'Y2 =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: y2controller,
    );
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distance Formula'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return ListView(
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
                    onPressed: () {
                      try {
                        calculate(double.parse(x1controller.text),double.parse(y1controller.text),double.parse(x2controller.text),double.parse(y2controller.text));
                      } catch (Exception) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'All Fields Must Be Non-Empty Numeric Values'),
                            duration: Duration(seconds: 1),
                        ),);
                      }
                      setState(() {});
                    },
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
          );
        },
      ),
    );
  }

  void calculate(double x1, double y1, double x2, double y2) {
    answer = (((sqrt(pow((x2-x1),2)+pow((y2-y1),2))*1000).round())/1000).toString();
  }

  @override
  void dispose() {
    x1controller.dispose();
    y1controller.dispose();
    x2controller.dispose();
    y2controller.dispose();
    super.dispose();
  }
}
