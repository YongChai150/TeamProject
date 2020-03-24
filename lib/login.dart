import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final _formKey = new GlobalKey<FormState>();
  String _username;
  String _password;

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() {
    if (validateAndSave()) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('AePAD'), actions: <Widget>[]),
      body: new Container(
        child: new Form(
          key: _formKey,
          child: new Column(
            children: <Widget>[
              new Image.asset(
                'images/logo_aepad.jpg',
                height: 150,
                width: 150,
              ),
              SizedBox(height: 20),
              new TextFormField(
                decoration: new InputDecoration(hintText: "Enter Username"),
                validator: (value) =>
                    value.isEmpty ? 'Please enter a username' : null,
                onSaved: (value) => _username = value,
              ),
              SizedBox(height: 20),
              new TextFormField(
                decoration: new InputDecoration(hintText: "Enter password"),
                validator: (value) =>
                    value.isEmpty ? 'Please enter a password' : null,
                onSaved: (value) => _password = value,
                obscureText: true,
              ),
              SizedBox(height: 20),
              new RaisedButton(
                  child: new Text('Submit'), onPressed: validateAndSubmit),
            ],
          ),
        ),
      ),
    );
  }
}
