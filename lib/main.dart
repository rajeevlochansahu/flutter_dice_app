import 'dart:math';

import 'package:flutter/material.dart';

//https://dartpad.dartlang.org/

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

/*
if you are creating a user interface where the state of the widget isn't going to change then you would use a StatelessWidget.
But, if you're creating something which is going to change, especially when it's dependent on user interaction,
so a user taps on a button, something changes. Or, a user pulls in some data from the internet, something on the screen updates,
then you're going to need to use a StatefulWidget.
 */

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 4;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //leftDiceNumber = 3;
                  leftDiceNumber = Random().nextInt(6) + 1; //1 to 5
                  rightDiceNumber = Random().nextInt(6) + 1; //1 to 5
                  print(
                      'Left button got pressed leftDiceNumber = $leftDiceNumber');
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1; //1 to 5
                  rightDiceNumber = Random().nextInt(6) + 1; //1 to 5
                  print(
                      'Right button got pressed rightDiceNumber = $rightDiceNumber');
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
