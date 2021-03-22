import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey,
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

  void changeDiceFace() {
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
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                /*setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;
                });*/
                //print("Left button got Pressed");
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
              //child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                /*setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;
                });*/
                //print("Right button got Pressed");
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
              //child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {
  int leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 3;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: FlatButton(
              onPressed: () {
                print("Left button got Pressed");
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                print("Right button got Pressed");
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
*/
/*
Image(
            //width: 200.0,
            image: AssetImage('images/dice1.png'),
          ),


 */
