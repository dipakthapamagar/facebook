import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                child: Text("P"),
                backgroundColor: Colors.grey,
                radius: 20.0,
              ),
            ),
            // ClipRect(
            //   clipBehavior: Clip.antiAlias,
            //   child: TextField(
            //     decoration: InputDecoration(
            //       labelText: "Create",
            //       hintText: "Whats on your mind?",
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(5)),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 120.0,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.videocam),
                    Text("Live")
                  ],
                ),
              ),
            ),
            Container(
              width: 120.0,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.image),
                    Text("Photo")
                  ],
                ),
              ),
            ),
            Container(
              width: 120.0,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Text("Check In")
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}