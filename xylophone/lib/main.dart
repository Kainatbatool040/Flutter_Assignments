import 'package:flutter/material.dart';
import 'package:xylophone/HomePage.dart';

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Main',
      debugShowCheckedModeBanner: false,
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  static String holder = '';
  static String holder_2 = '';
  static List<Color> myList_1 = [];
  static List<int> myList_2 = [];

  @override
  DropDownWidget createState() => DropDownWidget();
}

class DropDownWidget extends State<DropDown> {
  int count = 0;
  void convertion(String color, String soundNumber) {
    var clr_no;
    var wav_no = DropDown.holder_2;
    var number = int.parse(wav_no);
    var clr = DropDown.holder;

    if (clr == 'red') {
      clr_no = Color(0xfff44336);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'orange') {
      clr_no = Color(0xfff99807);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'yellow') {
      clr_no = Color(0xfff7f71D);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'green') {
      clr_no = Color(0xff4caf50);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'teal') {
      clr_no = Color(0xff009688);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'blue') {
      clr_no = Color(0xff2196f3);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'purple') {
      clr_no = Color(0xff9c27b0);
      DropDown.myList_1.add(clr_no);
    }
    DropDown.myList_2.add(number);
    print(DropDown.myList_2);
    print(DropDown.myList_1);
    print(count);
  }
  String dropdownValue = 'red';
  String dropdownValue_2 = '1';

  List<String> colorName = [
    'red',
    'orange',
    'yellow',
    'green',
    'teal',
    'blue',
    'purple'
  ];
  List<String> soundNo = ['1', '2', '3', '4', '5', '6', '7'];

  void getDropDownItem() {
    setState(() {
      DropDown.holder = dropdownValue;
      DropDown.holder_2 = dropdownValue_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "images/xylophone.jpg",
                  alignment: Alignment.centerLeft,
                  height: 60,
                  width: 60,
                ),
                Text(
                  '     Xylophone App',
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            DropdownButton(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black, fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.pink,
              ),
              onChanged: (data) {
                //print(data);
                setState(() {
                  dropdownValue = data.toString();
                });
              },
              items: colorName.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton(
              value: dropdownValue_2,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black, fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.pink,
              ),
              onChanged: (data) {
                //print(data);
                setState(() {
                  dropdownValue_2 = data.toString();
                });
              },
              items: soundNo.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            RaisedButton(
              onPressed: () {
                 if (count == 6) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()));
                    }
                   count++;
                 getDropDownItem();
                 convertion(DropDown.holder, DropDown.holder_2);
                 },
              child: Text('Next'),
              color: Colors.white12,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}