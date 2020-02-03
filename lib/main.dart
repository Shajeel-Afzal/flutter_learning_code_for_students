import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage2(),
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
