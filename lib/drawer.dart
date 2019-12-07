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
          ListTile(
            title: Text(
              "Exercise 2",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: FlutterLogo(),
            onTap: () { widget.current_screen == "routeTwo"
              ? Navigator.pop(context)
              : Navigator.pushNamed(context, "routeTwo");
            }
          ),
          ListTile(
            title: Text(
              "Exercise 3",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: FlutterLogo(),
            onTap: () { widget.current_screen == "routeThree"
              ? Navigator.pop(context)
              : Navigator.pushNamed(context, "routeThree");
            }
          ),
          ListTile(
            title: Text(
              "Exercise 4",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: FlutterLogo(),
            onTap: () { widget.current_screen == "routeFour"
              ? Navigator.pop(context)
              : Navigator.pushNamed(context, "routeFour");
            }
          ),
          ListTile(
            title: Text(
              "Exercise 5",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: FlutterLogo(),
            onTap: () { widget.current_screen == "routeFive"
              ? Navigator.pop(context)
              : Navigator.pushNamed(context, "routeFive");
            }
          ),
          ListTile(
            title: Text(
              "Exercise 6",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: FlutterLogo(),
            onTap: () { widget.current_screen == "routeSix"
              ? Navigator.pop(context)
              : Navigator.pushNamed(context, "routeSix");
            }
          ),
          ListTile(
            title: Text(
              "Exercise 7",
              style: TextStyle(fontSize: 18.0),
            ),
            leading: FlutterLogo(),
            onTap: () { widget.current_screen == "routeSeven"
              ? Navigator.pop(context)
              : Navigator.pushNamed(context, "routeSeven");
            }
          ),
        ],
      ),
    );
  }
}


