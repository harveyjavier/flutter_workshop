import 'package:flutter/material.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 1", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("Hello World", style: TextStyle(fontSize: 27, fontFamily: "GothamRndLight"),),
            ),
            SizedBox(height: 10),
            Center(
              child: Text("Hello World", style: TextStyle(fontSize: 27, fontFamily: "GothamRndBook"),),
            ),
            SizedBox(height: 10),
            Center(
              child: Text("Hello World", style: TextStyle(fontSize: 27, fontFamily: "GothamRndMedium"),),
            ),
            SizedBox(height: 10),
            Center(
              child: Text("Hello World", style: TextStyle(fontSize: 27, fontFamily: "GothamRndBold"),),
            ),
          ],
        ),
      ),
    );
  }
}
