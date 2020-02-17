import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erozgaar_app/AddTaskScreen.dart';
import 'package:flutter/material.dart';

class TasksListScreen extends StatefulWidget {
  @override
  _TasksListScreenState createState() => _TasksListScreenState();
}

class _TasksListScreenState extends State<TasksListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks List!"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection("tasks").snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return new Text('Error: ${snapshot.error}');
            }

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return new Text('Loading...');
              default:
                return new ListView(
                  children:
                  snapshot.data.documents.map((DocumentSnapshot document) {
                    return Row(
                      children: <Widget>[
                        Checkbox(value: true, onChanged: (isChecked) {

                        }),
                        Expanded(
                          child: ListTile(
                            title: new Text(document['task_title']),
                            subtitle: new Text(document['task_detail']),
                          ),
                        ),
                        Checkbox(value: true, onChanged: (isChecked) {

                        }),
                      ],
                    );
                  }).toList(),
                );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return AddTaskScreen();
            }),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
