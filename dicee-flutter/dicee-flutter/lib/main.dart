import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void ChangeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //leftDiceNumber = Random().nextInt(6) + 1;
                  ChangeDiceFace();
                });
                print('Left button got pressed.');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  //rightDiceNumber = Random().nextInt(6) + 1;
                  ChangeDiceFace();
                });
                print('Right button got pressed.');
              },
            ),
          )
        ],
      ),
    );
  }
}
