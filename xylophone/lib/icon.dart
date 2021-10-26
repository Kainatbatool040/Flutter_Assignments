import 'package:flutter/material.dart';

class Appbar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              width: 30,
              child: Image.asset(
                'assets/images/profile_pic.png',
              ),
            ),
            Icon(Icons.more_vert),
          ],


    ),
    );
  }
  
}