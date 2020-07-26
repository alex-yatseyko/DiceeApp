import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  void dice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // leftDiceNumber = 2;

    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                // flex: 12,
                child: FlatButton(
              onPressed: () {
                // print('Hello Alex');
                // setState(() {
                //   leftDiceNumber = Random().nextInt(6) + 1;
                //   rightDiceNumber = Random().nextInt(6) + 1;
                // });
                dice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            )
                // child: Image(
                //   // width: 200.0,
                //   image: AssetImage('images/dice$leftDiceNumber.png'),
                // ),
                ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  // setState(() {
                  //   rightDiceNumber = Random().nextInt(6) + 1;
                  //   leftDiceNumber = Random().nextInt(6) + 1;
                  // });
                  dice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class DicePage extends StatelessWidget {

// }
