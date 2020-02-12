import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class EmailPasswordLoginScreen extends StatefulWidget {
  @override
  _EmailPasswordLoginScreenState createState() =>
      _EmailPasswordLoginScreenState();
}

class _EmailPasswordLoginScreenState extends State<EmailPasswordLoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _hidePassword = true;
  String _email;

  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Text("Login Information"),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        onSaved: (value){
                          _email = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onSaved: (value){
                          _password = value;
                        },
                        obscureText: _hidePassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: _hidePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _hidePassword = !_hidePassword;
                              });
                            },
                          ),
                          border: OutlineInputBorder(),
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Forgot Password?"),
                          RaisedButton(
                            onPressed: () {
                              _doSignup();
                            },
                            child: Text("Login"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _doSignup() async {
    var formCurrentState = _formKey.currentState;
    formCurrentState.save();

    _email = _email.trim();

    print(_email);
    print(_password);

    try{
      AuthResult authResult = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password);

      print(authResult);
    } catch(e){
      print(e);
    } finally{
      print("finally!");
    }
  }
}

















