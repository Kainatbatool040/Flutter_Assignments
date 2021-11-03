import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Capital A-Z.dart';
import 'Small A-Z.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.sort_by_alpha,
              text: 'Capital_alphabets',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Capital_Page()))),
          Divider(),
          _createDrawerItem(
              icon: Icons.sort_by_alpha,
              text: 'Small_alphabets',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Small_Page()))),
          Divider(),
          _createDrawerItem(
              icon: Icons.report_problem,
              text: 'Report an issue', onTap: () {  }),
        ],
      ),
    );
  }
}

Widget _createDrawerItem(
    { IconData icon,  String text,  GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/drawer_header_background.png'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("kainatbatool902@gmail.com",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold))),
      ]));
}
