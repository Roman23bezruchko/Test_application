import 'dart:math';
import 'package:flutter/material.dart';

class ChangeBackgroundState extends State<ChangeBackground> {
  List _colors = [ //Get list of colors
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.teal,
    Colors.purple,
    Colors.amber,
    Colors.lightGreenAccent,
    Colors.pink
  ];

  Random random = new Random();

  int _currentIndex = 0;

  void _onChanged() {
    setState(() => _currentIndex = random.nextInt(7));
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () => _onChanged(), //specify background color  of button from our list of colors
      child: new Container(
        child: Center(
          child: Text('Hey there',
            style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),),
        ),
        color: _colors[_currentIndex],
      ),
    );
  }
}

class ChangeBackground extends StatefulWidget {
  @override
  ChangeBackgroundState createState() {
    return new ChangeBackgroundState();
  }
}

class MyBody extends StatelessWidget{
  Widget build(BuildContext context) {
    return new Container(
      child: ChangeBackground(),
    );
  }
}

void main() {
  runApp(
      new MaterialApp(
          home: new Scaffold(
              appBar: new AppBar(title: new Text('Flutter application')),
              body: MyBody()
          )
      )
  );
}