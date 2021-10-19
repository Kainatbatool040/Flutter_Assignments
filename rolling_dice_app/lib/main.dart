import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Rolling Dice',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

          ),
          backgroundColor: Color.fromRGBO(15, 157, 88, 1),
        ),

        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  // ignore: non_constant_identifier_names
  int flag = 0;
  int dice_no = 1;
  int dice_no1 = 1;
  int dice_no2 = 1;
  int dice_no3 = 1;
  int sum_1 = 0;
  int sum_2 = 0;
  int sum_3 = 0;
  int sum_4 = 0;
  int count_1 = 0;
  int count_2 = 0;
  int count_3 = 0;
  int count_4 = 0;
  bool _buttondisabled = false;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      if (flag == 0) {
        dice_no = Random().nextInt(6) + 1;
        sum_1 = sum_1 + dice_no;
        if (dice_no == 6) {
          count_1;
          flag = 0;
        } else {
          count_1++;
          flag = 1;
          if (flag == 1) {
            _DiceState();
          }
        }
      }
    });
  }

  void update2() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      if (flag == 1) {
        dice_no1 = Random().nextInt(6) + 1;
        sum_2 = sum_2 + dice_no1;
        if (dice_no1 == 6) {
          count_2;
          flag = 1;
        } else {
          count_2++;
          flag = 2;
          if (flag == 2) {
            _DiceState();
          }
        }
      }
    });
  }

  void update3() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      if (flag == 2) {
        dice_no2 = Random().nextInt(6) + 1;
        sum_3 = sum_3 + dice_no2;
        if (dice_no2 == 6) {
          count_3;
          flag = 2;
        } else {
          count_3++;
          flag = 3;
          if (flag == 3) {
            _DiceState();
          }
        }
      }
    });
  }

  void update4() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      if (flag == 3) {
        dice_no3 = Random().nextInt(6) + 1;
        sum_4 = sum_4 + dice_no3;
        if (dice_no3 == 6) {
          count_4;
          flag = 3;
        } else {
          count_4++;
          flag = 4;
          if (flag == 4) {
            _DiceState();
            flag = 0;
          }
        }
      }
    });
  }

  void disable() {
    setState(() {
      _buttondisabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Count = 10',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Player 1 Click : $count_1',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, left: 10.0),
                  height: 150.0,
                  child: FlatButton(
                      child: Image.asset('images/dice$dice_no.png'),
                      onPressed: () {
                        if (count_1 == 10) {
                          disable();
                        } else {
                          update();
                        }
                      }),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  'Player 2 Click : $count_2',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, left: 40.0),
                  height: 150.0,
                  child: FlatButton(
                      child: Image.asset('images/dice$dice_no1.png'),
                      onPressed: () {
                        if (count_2 == 10) {
                          disable();
                        } else {
                          update2();
                        }
                      }),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Player 3 Click : $count_3',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 36.0, left: 10.0),
                  height: 170.0,
                  child: FlatButton(
                      child: Image.asset('images/dice$dice_no2.png'),
                      onPressed: () {
                        setState(() {});
                        if (count_3 == 10) {
                          disable();
                        } else {
                          update3();
                        }
                      }),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Player 4 Click : $count_4',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 35.0,
                    left: 35.0,
                  ),
                  height: 170.0,
                  child: FlatButton(
                      child: Image.asset('images/dice$dice_no3.png'),
                      onPressed: () {
                        if (count_4 == 10) {
                          disable();
                        } else {
                          update4();
                        }
                      }),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 40.0),
                  child: Text(
                    'Player 1 = ' + sum_1.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 80.0),
                  child: Text(
                    'Player 2 = ' + sum_2.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 40.0),
                  child: Text(
                    'Player 3 = ' + sum_3.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 80.0),
                  child: Text(
                    'Player 4 = ' + sum_4.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
