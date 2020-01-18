import 'package:flutter/material.dart';

class Four extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 4", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: RaisedButton(
                padding: EdgeInsets.all(0.0),
                textColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Styled RaisedButton',
                    style: TextStyle(fontSize: 17)
                  ),
                ),
                onPressed: () => {},
              ),
            ),
            SizedBox( height: 20.0 ),
            Center(
              child: RaisedButton(
                child: Text("RaisedButton", style: TextStyle(fontSize: 17)),
                onPressed: () => {},
              ),
            ),
            SizedBox( height: 20.0 ),
            Center(
              child: FlatButton(
                child: Text("FlatButton", style: TextStyle(fontSize: 17)),
                onPressed: () => {},
              ),
            ),
            SizedBox( height: 20.0 ),
            Center(
              child: InkWell(
                child: Text("InkWell", style: TextStyle(fontSize: 17)),
                onTap: () => {},
              ),
            ),
            SizedBox( height: 20.0 ),
            Center(
              child: IconButton(
                icon: Icon(Icons.android),
                tooltip: "IconButton",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
