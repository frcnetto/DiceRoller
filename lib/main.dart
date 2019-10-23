import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: DicePage(),
        ),
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

  void rowDices() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.only(left: 16.0, right: 8.0),
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                rowDices();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.only(left: 8.0, right: 16.0),
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                rowDices();
              },
            ),
          ),
        ],
      ),
    );
  }
}
