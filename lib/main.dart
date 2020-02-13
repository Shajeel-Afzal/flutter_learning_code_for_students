import 'package:erozgaar_app/BottomNavigationBarDemo.dart';
import 'package:erozgaar_app/Drawer.dart';
import 'package:erozgaar_app/EmailPasswordLoginScreen.dart';
import 'package:erozgaar_app/FacebookStroyDemo.dart';
import 'package:erozgaar_app/GridViewDemo.dart';
import 'package:erozgaar_app/ListViewDemo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DrawerDemo(),
    );
  }
}

class DemoStateManagement extends StatefulWidget {
  @override
  _DemoStateManagementState createState() => _DemoStateManagementState();
}

class _DemoStateManagementState extends State<DemoStateManagement> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State management"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Number: " + num.toString()),
            Text("Randome!")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
            print(num);
          });
        },
      ),
    );
  }
}

class RowDemoWidget extends StatefulWidget {
  @override
  _RowDemoWidgetState createState() => _RowDemoWidgetState();
}

class _RowDemoWidgetState extends State<RowDemoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Column(
          children: <Widget>[
            Text(
              'This is Google Fonts',
              style: GoogleFonts.acme(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            Icon(
              FontAwesomeIcons.code,
              size: 200,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("eRozgaar App"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter First Name",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Last Name",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),

//                decoration: new InputDecoration(
//                  focusedBorder: OutlineInputBorder(
////                    borderSide:
////                        BorderSide(color: Colors.greenAccent, width: 5.0),
//                  ),
//                  enabledBorder: OutlineInputBorder(
////                    borderSide: BorderSide(color: Colors.red, width: 5.0),
//                  ),
//                  hintText: 'Mobile Number',
//                ),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text("Outline Button"),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Raised Button"),
              ),
              Text("Hello World!"),
              Text("Hello World!"),
              Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
