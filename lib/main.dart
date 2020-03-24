import 'package:flutter/material.dart';
import 'package:team_project/login/firstSplash.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Aepad",
      debugShowCheckedModeBanner: false,
      home: firstSplash(),
    );
  }
}
