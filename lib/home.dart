import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_workshop/drawer.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 3000), vsync: this
    );

    animation = Tween(begin: 0.0, end: 1500.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(current_screen: "routeHome"),
      appBar: AppBar(
        title: Text("Bicol IT Flutter Workshop", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          child: FlutterLogo(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
