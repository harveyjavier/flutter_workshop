import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class Six extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SixState();
}

class _SixState extends State<Six> {
  final _formKey = GlobalKey<FormState>();
  String _username, _password;
  bool _obscureP = true;

  void login() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Login Data"),
            content: Text("Username: " + _username + "\nPassword: " + _password),
            actions: <Widget>[
              FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 6", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlutterLogo(size: 70,),
                  SizedBox(height: 15.0,),
                  Text("Login", style: TextStyle(fontSize: 20, fontFamily: "GothamRndBold",),),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Enter your username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please input your username";
                          }
                        },
                        onSaved: (value) => _username = value,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                      child: TextFormField(
                        maxLines: 1,
                        obscureText: _obscureP,
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password",
                          suffixIcon: InkWell(
                            onTap: () { setState(() { _obscureP = !_obscureP; }); },
                            child: SizedBox(
                              width: 30, height: 30,
                              child: Stack(
                                alignment: Alignment(0.0, 0.0),
                                children: <Widget>[
                                  Container( width: 30, height: 30, ),
                                  Icon(
                                    _obscureP ? Icons.no_encryption : Icons.enhanced_encryption,
                                    size: 30 * 0.6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        validator: (input) {
                          if (input.isEmpty) {
                            return "Please input your password";
                          } else if (input.length < 6) {
                            return "Minimum password length is 6";
                          }
                        },
                        onSaved: (value) => _password = value,
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                      width: double.infinity,
                      child: RaisedButton(
                        padding: EdgeInsets.all(12.0),
                        shape: StadiumBorder(),
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(color:Colors.white, fontFamily:"GothamRndMedium"),
                        ),
                        color: Colors.blue,
                        onPressed: login,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
