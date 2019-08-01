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
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone_android),
                    suffixIcon: Icon(Icons.person),
                    prefixStyle: TextStyle(color: Colors.lightBlue),
                    labelText: "nomor telefon",
                    hintText: "081234567890....",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
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
