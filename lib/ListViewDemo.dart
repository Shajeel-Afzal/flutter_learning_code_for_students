import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

Widget _drawListItem(){
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
//              Image(image: null),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Text(
                "Contact Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Colors.grey,
                ),
                Text(
                  "Okay",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        Text("14:59"),
      ],
    ),
  );
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _drawListItem(),
          _drawListItem(),
          _drawListItem(),
          _drawListItem(),
          _drawListItem(),
          _drawListItem(),
          _drawListItem(),
          _drawListItem(),
          _drawListItem(),
        ],
      ),
    );
  }
}
