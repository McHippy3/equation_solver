import 'package:flutter/material.dart';
import './row_textfield.dart';
import 'dart:math';

class QuadraticPage extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _QuadraticPageState();
  }
}

class _QuadraticPageState extends State<QuadraticPage>{

  TextEditingController acontroller = TextEditingController();
  TextEditingController bcontroller = TextEditingController();
  TextEditingController ccontroller = TextEditingController();

  RowTextFields _a,_b,_c;

  String answer = '';

  _QuadraticPageState(){
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
    _c = RowTextFields(
      frontText: 'c =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: ccontroller,
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Quadratic Formula'),
      ),
      body: Builder(builder: (BuildContext context) {
        return ListView(
          children: <Widget>[
            _a,
            _b,
            _c,
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: RaisedButton(
                  child: Text('Calculate'),
                  onPressed: () {
                    try {
                      calculate(double.parse(acontroller.text),double.parse(bcontroller.text),double.parse(ccontroller.text));
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

  void calculate(double a, double b, double c){
    if(pow(b,2)-4*a*c < 0){
      answer = 'No Solution';
      return;
    }
    double answerplus = ((1000*((-b+sqrt(pow(b,2)-4*a*c))/(2*a))).round()/1000);
    double answerneg = ((1000*((-b-sqrt(pow(b,2)-4*a*c))/(2*a))).round()/1000);
    if(answerplus == answerneg) {
      answer = answerplus.toString();
      return;
    }
    answer = answerplus.toString()+ ', ' + answerneg.toString();
  }
}