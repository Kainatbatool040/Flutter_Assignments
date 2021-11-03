import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class contect_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Contect_us ',
      debugShowCheckedModeBanner: false,
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contect Us'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QuizApp()));
            },
          ),
        ]
      ),
      body: Container(

        child: Column(

          children: [

            ListTile(
              leading: Icon(Icons.account_circle),
              title: TextFormField(
                decoration: InputDecoration(
                    hintText: 'username'
                ),
                controller: nameController,
              ),
            ),

            ListTile(
              leading: Icon(Icons.lock),
              title: TextFormField(
                decoration: InputDecoration(
                    hintText: 'password'
                ),
                controller: passwordController,
              ),
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: TextFormField(
                decoration: InputDecoration(
                    hintText: 'email id'
                ),
                controller: emailController,
              ),
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: TextFormField(
                decoration: InputDecoration(
                    hintText: 'mobile number'
                ),
                controller: mobileNumberController,
              ),
            ),

            RaisedButton(onPressed: (){

              setState(() {

                print(nameController.text.toString());
                print(passwordController.text.toString());
                print(emailController.text.toString());
                print(mobileNumberController.text.toString());
              });

            }, child: Text('Send Message'),
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),


          ],
        ),
      ),
    );
  }
}
