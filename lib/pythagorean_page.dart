import 'package:flutter/material.dart';
import './row_textfield.dart';
import 'dart:math';

class PythagoreanPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _PythagoreanPageState();
  }
}

class _PythagoreanPageState extends State<PythagoreanPage> {

  TextEditingController acontroller = TextEditingController();
  TextEditingController bcontroller = TextEditingController();

  RowTextFields _a, _b;

  String answer = '';

  _PythagoreanPageState() {
    _a = RowTextFields(
      frontText: 'a =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: acontroller,
    );
    _b = RowTextFields(
      frontText: 'b =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: bcontroller,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pythagorean Theorem'),
      ),
      body: Builder(builder: (BuildContext context) {
        return ListView(
          children: <Widget>[
            _a,
            _b,
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Image.asset('assets/pythagorean_formula.PNG'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: RaisedButton(
                  child: Text('Calculate'),
                  onPressed: () {
                    try {
                      calculate(double.parse(acontroller.text),
                          double.parse(bcontroller.text));
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

  void calculate(double a, double b) {
    answer = 'c = ' + ((sqrt(pow(a , 2) + pow(b , 2)) * 1000).round() / 1000).toString();
  }

  @override
  void dispose() {
    acontroller.dispose();
    bcontroller.dispose();
    super.dispose();
  }
}