import 'package:flutter/material.dart';
import './row_textfield.dart';
import 'dart:math';

class GeometricPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _GeometricPageState();
  }
}

class _GeometricPageState extends State<GeometricPage> {
  TextEditingController acontroller = TextEditingController();
  TextEditingController rcontroller = TextEditingController();
  TextEditingController ncontroller = TextEditingController();

  RowTextFields _a, _r, _n;

  String answer = '';

  _GeometricPageState() {
    _a = RowTextFields(
      frontText: 'a =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: acontroller,
    );
    _r = RowTextFields(
      frontText: 'r =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: rcontroller,
    );
    _n = RowTextFields(
      frontText: 'n =',
      widthText: 100.0,
      widthTextField: 250.0,
      fontSize: 24.0,
      controller: ncontroller,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geometric Sequence'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return ListView(
            children: <Widget>[
              _a,
              _r,
              _n,
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Center(
                  child: Image.asset('assets/geometric_formula.PNG'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: RaisedButton(
                    child: Text('Calculate'),
                    onPressed: () {
                      try {
                        if (double.parse(rcontroller.text) == 1.0)
                          throw Exception;
                        calculate(
                            double.parse(acontroller.text),
                            double.parse(rcontroller.text),
                            double.parse(ncontroller.text));
                      } catch (Exception) {
                        String snackBarMessage;
                        if (double.parse(rcontroller.text) == 1.0)
                          snackBarMessage = 'Variable r Cannot Be Equal to 1';
                        else
                          snackBarMessage =
                              'All Fields Must Be Non-Empty Numeric Values';
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text(snackBarMessage),
                            duration: Duration(seconds: 1),
                          ),
                        );
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

  void calculate(double a, double r, double n) {
    answer = 'S = ' + (((((a * (1 - pow(r, n + 1))) / (1 - r)) * 1000).round()) / 1000)
        .toString();
  }

  @override
  void dispose() {
    acontroller.dispose();
    rcontroller.dispose();
    ncontroller.dispose();
    super.dispose();
  }
}
