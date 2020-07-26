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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                // flex: 12,
                child: FlatButton(
              onPressed: () {
                print('Hello Alex');
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
                  print('Hello Alex');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
