import 'package:flutter/material.dart';
import 'package:team_project/login.dart';
import 'dart:async';

class firstSplash extends StatefulWidget {
  @override
  _firstSplashState createState() => new _firstSplashState();
}

class _firstSplashState extends State<firstSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => new Login(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          new AppBar(title: new Text('Welcome to AePAD'), actions: <Widget>[]),
      body: Container(
        alignment: Alignment(0.0, 0.0),
        child: Column(children: <Widget>[
          new Image.asset(
            'images/logo_aepad.jpg',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ]),
      ),
    );
  }
}
