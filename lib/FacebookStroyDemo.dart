import 'package:erozgaar_app/EmailPasswordLoginScreen.dart';
import 'package:flutter/material.dart';

class FacebookStoryDemo extends StatefulWidget {
  @override
  _FacebookStoryDemoState createState() => _FacebookStoryDemoState();
}

class _FacebookStoryDemoState extends State<FacebookStoryDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            buildListViewItem(),
            buildListViewItem(),
            buildListViewItem(),
          ],
        ),
      ),
    );
  }

  Widget buildListViewItem() {
    return Container(
      width: 200,
      margin: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: InkWell(
          onTap: () => print("ciao"),
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network('https://placeimg.com/640/480/any',
                        height: 300, fit: BoxFit.fill),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Birthday",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 16,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return EmailPasswordLoginScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          'https://photo-cdn.icons8.com/assets/previews/591/57213897-b87e-420d-ac84-8b2b591ab5a92x.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
