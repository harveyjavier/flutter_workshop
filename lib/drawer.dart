import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  String current_screen;

  AppDrawer({this.current_screen});

  @override
  State<StatefulWidget> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Bicol IT", style: TextStyle(fontSize: 20, fontFamily: "GothamRndBold")),
            accountEmail: Text("Flutter Workshop", style: TextStyle(fontSize: 17, fontFamily: "GothamRndMedium")),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/images/bicolit.png",)
            ),
          ),
          ListTile(
            title: Text(
              "Exercise 1",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: FlutterLogo(),
            onTap: () { widget.current_screen == "routeOne"
              ? Navigator.pop(context)
              : Navigator.pushNamed(context, "routeOne");
            }
          ),
        ],
      ),
    );
  }
}


