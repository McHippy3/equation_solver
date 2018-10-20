import 'package:flutter/material.dart';
import 'main_page.dart';

class DistancePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _DistancePageState();
  }
}

class _DistancePageState extends State<DistancePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Distance Formula'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              TextField(),
            ],
          ),
        ],
      ),
    );
  }
}
