import 'dart:async';
import 'package:flutter/material.dart';

import 'main.dart';


class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

List<String> Capital = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z',
];
List<String> small = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z',
];
int count = 0;
bool num = false;

int seconds = 5;
int minutes = 0;
Timer _timer = Timer.periodic(const Duration(seconds: 1), (_) {});

class _PlayScreenState extends State<PlayScreen> {
  void startTimer() {
    // ignore: unnecessary_null_comparison
    if (_timer != null) {
      _timer.cancel();
    }
    if (minutes > 0) {
      seconds = minutes * 60;
    }
    if (seconds > 0) {
      minutes = (seconds / 60).floor();
      seconds -= (minutes * 60);
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          if (minutes > 0) {
            seconds = 59;
            minutes--;
          } else {
            _timer.cancel();
            // ignore: avoid_print
            print('Time Ended');
            setState(() {
              if (count < Capital.length - 1) {
                count++;

                seconds = 5;
                startTimer();
              }
            });
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                    decoration: BoxDecoration(color: Colors.orange),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white70,
                      child: CircleAvatar(
                        radius: 74,
                        backgroundImage: AssetImage('images/download.png'),
                      ),
                    )
                ),
                const SizedBox(
                  height: 8,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('Main Screen',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('Capital A-Z',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    alphaCase = true;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlayScreen()),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('small a-z',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),),
                  onTap: () {
                    alphaCase = false;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlayScreen()),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ]
          ),
        ),

        appBar: AppBar(
          title: const Text('Alphabets'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              alphaCase == true
                  ? Text(
                '${Capital[count]}',
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 120,
                    fontWeight: FontWeight.w600),
              )
                  : Text(
                '${small[count]}',
                style: const TextStyle(
                    color: Colors. blueAccent,
                    fontSize: 120,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          if (count < Capital.length - 1) {
                            count--;

                            seconds = 5;
                            startTimer();
                          }
                        });
                      }),
                  const SizedBox(
                    width: 40,
                  ),
                  FloatingActionButton(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          if (count < Capital.length - 1) {
                            count++;
                            seconds = 5;
                            startTimer();
                          }
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              num == false
                  ? FloatingActionButton(
                  elevation: 20,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.play_arrow),
                  onPressed: () {
                    setState(() {
                      count;
                      startTimer();

                      num = true;
                    });
                  })
                  : Container(),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Time Remaining: $seconds',
                      style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 14,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}