import 'package:flutter/material.dart';
import './row_textfield.dart';
import 'dart:math';

class ArithmeticPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _ArithmeticPageState();
  }
}

class _ArithmeticPageState extends State<ArithmeticPage>{

  TextEditingController acontroller = TextEditingController();
  TextEditingController ncontroller = TextEditingController();
  TextEditingController dcontroller = TextEditingController();

  RowTextFields _a,_n,_d;

  String answer = '';

  _ArithmeticPageState(){
    _a = RowTextFields(
      frontText: 'a =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: acontroller,
    );
    _n = RowTextFields(
      frontText: 'n =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: ncontroller,
    );
    _d = RowTextFields(
      frontText: 'd =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: dcontroller,
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Sum'),
      ),
      body: Builder(builder: (BuildContext context) {
        return ListView(
          children: <Widget>[
            _a,
            _n,
            _d,
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: RaisedButton(
                  child: Text('Calculate'),
                  onPressed: () {
                    try {
                      calculate(double.parse(acontroller.text),double.parse(ncontroller.text),double.parse(dcontroller.text));
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
      },),
    );
  }

  void calculate(double a, double n, double d){

  }
}