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

  //variable that means how much taps user made
  var _count = 0;

  //default color
  Color newColor = Colors.grey[300];
  generateColor() {
    setState(() {
      _count++;
      //randomly selected color
      newColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });

    //here I try to predict BOTTOM OVERFLOWED exception
    if (_count > 200){
      resetValues();
    }
  }

  //this is a method that reset values to default
  resetValues(){
      setState(() {
        _count = 0;
        newColor = Colors.grey[300];
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Task'),
          backgroundColor: Colors.black,
          actions: <Widget>[
            //this is a button for reset values
            IconButton(
              icon: Icon(Icons.autorenew),
              iconSize: 40,
              onPressed: () => resetValues(),
            ),
          ],
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
                      fontSize: 18,
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
                    'You tapped',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    '$_count',
                    style: TextStyle(
                      fontSize: _count + 15.0, // the bigger value - the bigger fontSize
                      fontWeight: FontWeight.bold
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


