import 'package:flutter/material.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                width: 75.0,
                child: Center(child: Text('Text')),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                width: 200.0,
                child: TextField(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
