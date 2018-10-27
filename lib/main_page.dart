import 'package:flutter/material.dart';
import 'formula_buttons.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Formula Solver"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          FormulaButton('Distance Formula'),
          FormulaButton('Quadratic Formula'),
          FormulaButton('Pythagorean Theorem'),
          FormulaButton('Arithmetic Sum'),
          FormulaButton('Geometric Sequence'),
          FormulaButton('View Interstitial Ad'),
        ],
      ),
    );
  }
}
