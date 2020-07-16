import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MainScreen(),
));

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  List colors = [Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  Color newColor = Colors.grey[300];
  generateColor() {
    setState(() {
      newColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Task'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: newColor,
        body: InkWell(
          onTap: () => generateColor(),
          child: Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        );

  }
}


