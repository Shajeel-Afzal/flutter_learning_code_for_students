import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _bottomNavCurrentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _bottomNavCurrentIndex == 0 ? Text("Watch Live!", style: Theme
            .of(context)
            .textTheme
            .headline,) : Text("Contact Us!", style: Theme
            .of(context)
            .textTheme
            .headline,)
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });

          print(_bottomNavCurrentIndex);
        },
        currentIndex: _bottomNavCurrentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.tv), title: Text("Watch Live")),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), title: Text("Contact Us")),
        ],
      ),
    );
  }
}
