import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: EightBall(),
      ),
    );

class EightBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          brightness: Brightness.dark,
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: BallArea());
  }
}

class BallArea extends StatefulWidget {
  @override
  _BallAreaState createState() => _BallAreaState();
}

class _BallAreaState extends State<BallArea> {
  int answer = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$answer.png'),
        onPressed: () {
          setState(() {
            answer = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
