import 'package:facebook/Json/json.dart';
import 'package:facebook/function/functions.dart';
// import 'package:facebook/pages/profile.dart';
import 'package:facebook/widget/post.dart';
import 'package:facebook/widget/story.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myPosts = Json.json;
  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              OutlineButton(
                child: Text("What's on your mind?"),
                // clipBehavior: Clip.hardEdge,
                onPressed: () {},
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
                width: iconWidth(mediaQ),
                height: 40.0,
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.videocam,
                        size: 18.0,
                      ),
                      Text(
                        "Live",
                        style: TextStyle(fontSize: 13.0),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Opacity(
                child: Text("|"),
                opacity: 0.5,
              ),
              Container(
                width: iconWidth(mediaQ),
                // width: mediaQ.size.width/3,
                height: 40.0,
                child: FlatButton(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.image,
                          size: 18.0,
                        ),
                        Text(
                          "Photo",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ],
                    ),
                    onPressed: () {}),
              ),
              Opacity(
                child: Text("|"),
                opacity: 0.5,
              ),
              Container(
                width: iconWidth(mediaQ),
                height: 40.0,
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 18.0,
                      ),
                      Text(
                        "Check In",
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 10.0,
          ),
          Story(),
          Divider(
            color: Colors.grey,
            thickness: 10.0,
          ),
          ...myPosts.map((item) {
            return Post(
              id: item['id'],
              name: item['name'],
              day: item['day'],
              time: item['time'],
              status: item['status'],
              image: item['image'],
              likes: item['likes'],
              comments: item['comment'],
              shares: item['shares'],
            );
          }).toList(),
        ],
      ),
    );
  }
}
