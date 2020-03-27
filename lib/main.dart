import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[900],
        title: Text("Ask Me Anything ",
        style: TextStyle(
        fontFamily:'Source',
            fontSize:30.0,
        ),
        ),
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  void randomize()
  {
    setState(() {
      ballNumber=Random().nextInt(4)+1;
    });
  }
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(child: FlatButton(child: Image.asset('images/ball$ballNumber.png'),
      onPressed: (){
      randomize();
      }
    ),
    );
  }
}
