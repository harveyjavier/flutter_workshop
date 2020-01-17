import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_workshop/home.dart';
import 'package:flutter_workshop/exercises/1.dart';

class App extends StatelessWidget {
  final materialApp = MaterialApp(
    title: "Flutter Workshop",
    theme: ThemeData(
      primaryColor: Colors.blue,
      fontFamily: "GothamRndBook",
      cursorColor: Colors.blue,
      textSelectionColor: Colors.blue.withOpacity(0.2),
      textSelectionHandleColor: Colors.blue,
      dialogBackgroundColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: Home(),
    routes: <String, WidgetBuilder>{
      "routeHome": (BuildContext context) => Home(),
      "routeOne": (BuildContext context) => One(),
    },
  );

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
