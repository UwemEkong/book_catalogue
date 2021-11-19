import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const Color myColor = Color(0xFFAFAFF2);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book catalogue",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Book Catalogue"),
          backgroundColor: myColor,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Text(
              "NY Times Best Sellers",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
