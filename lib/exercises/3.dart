import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 3", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "GothamRndBook",
                  color: Color(0XFF002D50),
                ),
              ),
              color: Color(0XFF59CAFD),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                "to",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "GothamRndBook",
                  color: Color(0XFF002D50),
                ),
              ),
              color: Color(0XFF54C5F8),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                "Bicol",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "GothamRndBook",
                  color: Color(0XFF002D50),
                ),
              ),
              color: Color(0XFF29B6F6),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                "IT",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "GothamRndBook",
                  color: Colors.white,
                ),
              ),
              color: Color(0XFF01579B),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "GothamRndBook",
                  color: Colors.white,
                ),
              ),
              color: Color(0XFF014881),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: const Text(
                "Workshop",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "GothamRndBook",
                  color: Colors.white,
                ),
              ),
              color: Color(0XFF002D50),
            ),
          ],
        ),
      ),
    );
  }
}
