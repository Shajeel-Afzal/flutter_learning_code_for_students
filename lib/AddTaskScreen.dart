import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _taskTitle;

  String _taskDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
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
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        onSaved: (value) {
                          _taskTitle = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Task Title",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        maxLines: 4,
                        minLines: 4,
                        onSaved: (value) {
                          _taskDetail = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Task Detail",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: OutlineButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel"),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {
                                _addTask();
                              },
                              child: Text("Add Task"),
                            ),
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

  void _addTask() {
    var formCurrentState = _formKey.currentState;
    formCurrentState.save();

    _taskTitle = _taskTitle.trim();

    print(_taskTitle);
    print(_taskDetail);

    try {
      Firestore.instance.collection("tasks").document().setData(
          {"task_title": _taskTitle, "task_detail": _taskDetail}).then((value) {
        Navigator.pop(context);
      }).catchError((e) {
        print(e);
      });
    } catch (e) {
      print(e);
    }
  }
}
