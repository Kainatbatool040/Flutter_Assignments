import 'package:flutter/material.dart';
import 'Capital A-Z.dart';
import 'Small A-Z.dart';
import 'drawer.dart';
import 'package:flutter/src/material/raised_button.dart';

class Alphabat_Card extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' main ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Alphabat Card App for kids',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            actions: <Widget>[
              Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
            ]
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Capital_Page()));
                },
                child: Text('Capital A-Z'),
                color: Colors.white12,
                textColor: Colors.black,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Small_Page()));
                },
                child: Text('small a-z'),
                color: Colors.white12,
                textColor: Colors.black,
              ),
            ],
            //padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
        drawer: drawer(),
      ),
    );
  }
}

class Alphabat_Page extends StatefulWidget {
  @override
  _Alphabat_PageState createState() => _Alphabat_PageState();
}

class _Alphabat_PageState extends State<Alphabat_Page> {


  @override
  Widget build(BuildContext context) {

  }
}



/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
