import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Challenge',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(

          title: Text(
            'Dice Roller',
            style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'CormorantGaramond'),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    );
  }
}


//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var leftDiceNumber=1;
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//              child: FlatButton(
//            onPressed: () {},
//            child: Image.asset(
//              'images/dice1.png',
//            ),
//          )),
//          Expanded(
//              child: FlatButton(child: Image.asset('images/dice3.png'))),
//        ],
//      ),
//    );
//  }
//}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void UpdateDiceFace(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: () {
                  UpdateDiceFace();
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              )),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  UpdateDiceFace();
                },
                  child: Image.asset('images/dice$rightDiceNumber.png')
              )
          ),
        ],
      ),
    );
  }
}
