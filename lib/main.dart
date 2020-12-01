import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String selectedposition = 'sunny';
  bool isSwitched = false;
  bool checkBox=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radio botton"),
          elevation: 0,

        ),
        body:
        Container(
          child: Column(
            children: [
              Container(
                child: Switch(
                  value: isSwitched,
                  onChanged: (value){
                    setState(() {
                      isSwitched=value;
                    });
                  },
                  activeColor: Colors.redAccent,
                  activeTrackColor: Colors.cyan,
                ),
              ),
              ListTile(
                title: Text("sunny"),
                leading: Radio(
                  value: 'sunny',
                  groupValue: selectedposition,
                  onChanged: (value){
                    setState(() {
                      selectedposition=value;
                    });
                  },
                ),
              ),
              Checkbox(
                  value: checkBox,
                  onChanged: (value){
                    setState(() {
                      checkBox=!checkBox;
                    });
                  }
              ),
              Text("i am true"),

            ],
          ),
        ),
      ),

    );
  }
}