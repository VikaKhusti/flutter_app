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

  var _count = 0;
  
  Color newColor = Colors.grey[300];
  generateColor() {
    setState(() {
      _count++;
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
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(bottom: 100),
                  child: Text(
                    'Tap on sceen and see what happens...',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                new Container(
                  child: Text(
                    'Hey there',
                     style: TextStyle(
                     fontSize: 25, fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    'You tapped $_count',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),

              ],
          ),
          ),
        ),
        );

  }
}


