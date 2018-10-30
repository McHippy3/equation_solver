import 'package:flutter/material.dart';
import 'distance_page.dart';
import 'quadratic_page.dart';
import 'pythagorean_page.dart';
import 'arithmetic_page.dart';
import 'geometric_page.dart';

class FormulaButton extends StatelessWidget {
  String buttonText;

  FormulaButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RaisedButton(
        padding: const EdgeInsets.all(15.0),
        child: Text(buttonText),
        onPressed: () {
          switch (buttonText) {
            case 'Distance Formula':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DistancePage()),
              );
              break;
            case 'Quadratic Formula':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuadraticPage()),
              );
              break;
            case 'Pythagorean Theorem':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PythagoreanPage())
              );
              break;
            case 'Arithmetic Sum':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArithmeticPage())
              );
              break;
            case 'Geometric Sequence':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GeometricPage())
              );
              break;
            case 'View Interstitial Ad':
              break;
          }
        },
      ),
    );
  }
}
