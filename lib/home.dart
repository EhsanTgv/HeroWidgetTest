import 'package:flutter/material.dart';
import 'package:hero_widget/second.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Column(
        children: [
          RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text("Next Page")),
          Hero(
            tag: "DemoTag",
            child: Icon(
              Icons.add,
              size: 70.0,
            ),
          ),
        ],
      ),
    );
  }
}
