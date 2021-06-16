import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: TextTheme(
            headline1: TextStyle(fontFamily: "monospace", color: Colors.white),
            headline4: TextStyle(fontFamily: "monospace", color: Colors.white),
            headline5: TextStyle(fontFamily: "monospace", color: Colors.white),
          )),
      routes: {
        "/": (context) => Home(),
      },
      initialRoute: "/",
    );
  }
}
