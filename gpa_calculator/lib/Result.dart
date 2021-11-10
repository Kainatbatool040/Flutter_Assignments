import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/drawer.dart';
import 'GPA.dart';
import 'Home_page.dart';
import 'Result.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Result ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title:  Text('Result'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/CUI-Vehari.jpeg"),
                    fit: BoxFit.cover)
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: ResultPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 10.0, height: 100.0),
            Center(
              child: Text(
                'Result',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 15.0, height: 100.0),
          ],
        ),


        FlatButton(
          textColor: Colors.white,
          color: Colors.brown,
          child:  Text(
            'Re-Calculate',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GPA()));
          },
        ),
        SizedBox(
          height: 50,
        ),
        FlatButton(
          textColor: Colors.white,
          color: Colors.brown,
          child:  Text(
            'Go to Home',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
