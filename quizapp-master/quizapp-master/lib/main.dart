import 'dart:async';
import 'package:flutter/material.dart';
import 'Contect_us.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'drawer.dart';


QuizBrain quizBrain = QuizBrain();

class QuizApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' main ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Quiz App',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          actions: <Widget>[
        IconButton(
        icon: Icon(
          Icons.perm_contact_cal,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => contect_us()));
        },
      ),
      ]
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
        drawer: drawer(),
        ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finshed',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }

        //quizBrain.nextQuestion();
      }
    });
  }
  //int j = 1;
 // int timer = 30;
  //String showtimer = "30";
 // bool canceltimer = false;
  //int t = 60;
  //countDown(){
    //Future.doWhile(()async {
      //await Future.delayed(Duration(seconds: 1),);
      //setState(() {
       // t--;
     // });
     // return t!=0;
   // });
  //}
  int timer =10;
  String showtimer= "10";
  bool canceltimer = false;
  @override
  void initState(){
    starttimer();
    super.initState();
  }
  void starttimer() async{
    const onesec= Duration(seconds: 1);
        Timer.periodic(onesec, ((Timer t) async {
    setState((){
    if(timer < 1){
    t.cancel();
    quizBrain.nextQuestion();
    }else if(canceltimer == true) {
      t.cancel();
    }else{
    timer = timer-1;
    }
    showtimer = timer.toString();

    });
        }),
        );
  }

void nextquestion(){
  canceltimer = false;
  timer = 10;
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
                starttimer();
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
                starttimer();
                //The user picked false.
              },
            ),
          ),
        ),

        Row(
          children: scoreKeeper,
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.topCenter,
            child: Center(
              child: Text(
                showtimer,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
