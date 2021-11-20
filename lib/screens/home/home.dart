import 'package:flutter/material.dart';
import '../../widgets/appbar.dart';
import '../../widgets/bookcard.dart';

const Color myColor = Color(0xFFAFAFF2);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book catalogue",
      home: Scaffold(
          appBar: const CustomAppBar(),
          body: ListView(
            children: <Widget>[
              Column(children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Text(
                      "NY Times Best Sellers",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const BookCard(),
                const BookCard()
              ])
            ],
          )),
    );
  }
}
