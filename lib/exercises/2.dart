import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Exercise 2", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Icon(
                Icons.android,
                color: Colors.blue,
                size: MediaQuery.of(context).size.width / 3,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                "assets/images/android-peace.png",
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "https://i.ya-webdesign.com/images/android-images-png-1.png",
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
