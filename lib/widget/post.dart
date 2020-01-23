import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String id;
  Post({this.id});
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  
  @override
  Widget build(BuildContext context) {
    var id = widget.id;
    return Column(
      children: <Widget>[
        //profile icon, name description, horizontal icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    child: Text("B"),
                    backgroundColor: Colors.grey,
                    radius: 20.0,
                  ),
                ),
                //Use TextSpan
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "My Facebook",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Yesterday at 7:79 PM"),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                //open alert box
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Text(
                id + " Hello code java not hawa.. Flutter is khatra.. sikena vane khudahanchu.. tesaile siknu pryo"),
          ),
        ),
        Image.network("https://tmssl.akamaized.net//images/foto/normal/cristiano-ronaldo-im-trikot-von-juventus-1576149790-28250.jpg"),
        //Emoji haru
        Row(

        ),
        Divider(
          color: Colors.grey,
          thickness: 0.3,
        ),
        //Like comment share
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            //3 Rows
            Row(
              children: <Widget>[
                Icon(Icons.thumb_up),
                Text("Like"),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.comment),
                Text("Comment"),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.share),
                Text("Share"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
