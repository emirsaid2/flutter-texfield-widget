import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Container(
          color: Colors.green,
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                maxLength: 5,
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
