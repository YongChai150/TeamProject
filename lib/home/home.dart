import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          new AppBar(title: new Text('AePAD Dashboard'), actions: <Widget>[]),
      body: Center(
          child: Text(
              'Do your UI Part. The burger menu should have the way to go to your UI')),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            //append your parts into any of these ListTile
            //Navigator.pop() should be replaced with how you want the redirection to your parts to happen
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
