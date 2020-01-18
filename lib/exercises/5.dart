import 'package:flutter/material.dart';

class Five extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Exercise 5", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: RaisedButton(
                child: Text("AlertDialog", style: TextStyle(fontSize: 17)),
                onPressed: () => {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Title"),
                        content: Text("Hello World"),
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
                  )
                },
              ),
            ),
            SizedBox( height: 20.0 ),
            Center(
              child: RaisedButton(
                child: Text("SnackBar", style: TextStyle(fontSize: 17)),
                onPressed: () {
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Hello World!"),
                      action: SnackBarAction(
                        label: "Close",
                        onPressed: () {},
                      ),
                    )
                  );
                },
              ),
            ),
            SizedBox( height: 20.0 ),
            Center(
              child: DropdownButton<String>(
                value: _dropdownValue,
                icon: Icon(Icons.expand_more),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: "GothamRndBook",
                ),
                underline: Container(
                  height: 2,
                  color: Colors.blue,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    _dropdownValue = newValue;
                  });
                },
                items: <String>["One", "Two", "Three", "Four"].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
