import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class Seven extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SevenState();
}

class _SevenState extends State<Seven> {
  String _data = "";
  bool _isFetching = false;

  _parseData(data) {
    Navigator.of(context).pop();
    var contentString = "";
    var decodedData = json.decode(data);

    contentString += "{\n";
    contentString += "  userId: " + decodedData["userId"].toString() + ",\n";
    contentString += "  id: " + decodedData["id"].toString() + ",\n";
    contentString += "  title: " + decodedData["title"].toString() + ",\n";
    contentString += "  body: " + decodedData["body"].toString() + ",\n";
    contentString += "}";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Parsed Data"),
          content: Text(contentString),
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

  void _fetchData() async {
    if (!_isFetching) {
      setState(() {
        _isFetching = true;
      });

      var data = "";
      final response = await http.get("https://jsonplaceholder.typicode.com/posts/1");

      if (response.statusCode == 200) {
        data = response.body;
      } else {
        data = "Failed to load data";
      }

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(data == "Failed to load data" ? "Error" : "Fetched Data"),
            content: Text(data),
            actions: <Widget>[
              if (data != "Failed to load data") FlatButton( child: Text("Parse"), onPressed: () => _parseData(data),),
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

      setState(() {
        _isFetching = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 7", style: TextStyle(fontFamily: "GothamRndMedium")),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: _isFetching 
              ? SizedBox(
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                  height: 17.0, width: 17.0,
                )
              : Text("Fetch Data", style: TextStyle(fontSize: 17)),
            onPressed: _fetchData,
          ),
        ),
      ),
    );
  }
}
