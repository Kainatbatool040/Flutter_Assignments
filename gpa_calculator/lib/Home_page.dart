import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/drawer.dart';
import 'CGPA.dart';
import 'GPA.dart';
import 'SGPA.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ' HomePage ',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title:  Text('Home Page'),
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
            child: HomePagePage(),
          ),
        ),
      ),
        ),
        ),
    );
  }
}
class HomePagePage extends StatelessWidget {
  const HomePagePage({Key? key}) : super(key: key);

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
                'Calculate Your GPA, CGPA, SGPA',
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
            'GPA-Calculator',
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
        FlatButton(
          textColor: Colors.white,
          color: Colors.brown,
          child:  Text(
            'CGPA-Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CGPA()));
          },
        ),
        FlatButton(
          textColor: Colors.white,
          color: Colors.brown,
          child:  Text(
            'SGPA-Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SGPA()));
          },
        ),
         SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
