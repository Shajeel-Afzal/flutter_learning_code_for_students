import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo"),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("shajeel.afzal@gmail.com"),
                  ),
                ],
              ),
            ),
            ListTile(
              selected: true,
              leading: Icon(Icons.mail),
              title: Text("Inbox"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Outbox"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
          ],
        ),
      ),
    );
  }
}
