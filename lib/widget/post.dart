import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String id;
  final String name;
  final String day;
  final String time;
  final String status;
  final String image;
  final int likes;
  final int shares;
  final int comments;

  Post(
      {this.id,
      this.image,
      this.comments,
      this.day,
      this.likes,
      this.name,
      this.shares,
      this.status,
      this.time});
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  int _likes = 0;
  void likesIncrementer() {
    setState(() {
      _likes++;
    });
  }

  buildSnackBar() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Hello"),
      action: SnackBarAction(
        label: "Pressed",
        onPressed: () {},
      ),
    ));
  }

  buildBottomSheet() {}

  @override
  Widget build(BuildContext context) {
    var id = widget.id;
    var name = widget.name;
    var day = widget.day;
    var time = widget.time;
    var status = widget.status;
    var image = widget.image;

    var comments = widget.comments;
    var shares = widget.shares;

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
                    child: Text(id),
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
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(day + " at " + time),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                //open alert box

                //show Snackbar
                // buildSnackBar();
                //show bottomSheet
                // buildBottomSheet();
                showBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                          color: Colors.red,
                        ))),
                        child: ListView(
                          shrinkWrap: true,
                          primary: false,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.save),
                              title: Text("Save Post"),
                              subtitle: Text("Add this to your saved items"),
                            ),
                            ListTile(
                              leading: Icon(Icons.keyboard_hide),
                              title: Text("Hide Post"),
                              subtitle: Text("See Fewer Post Like This"),
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Text(status),
          ),
        ),
        Image.network(image),
        Padding(
          padding: EdgeInsets.all(5.0),
        ),
        //Emoji haru

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text("$_likes Likes"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Text("$comments Comments . $shares Shares"),
            )
          ],
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
            FlatButton(
              child: Row(
                children: <Widget>[
                  Icon(Icons.thumb_up),
                  Text("Like"),
                ],
              ),
              onPressed: likesIncrementer,
              onLongPress: () {},
            ),
            FlatButton(
              child: Row(
                children: <Widget>[
                  Icon(Icons.comment),
                  Text("Comment"),
                ],
              ),
              onPressed: () {},
              onLongPress: () {},
            ),
            FlatButton(
              child: Row(
                children: <Widget>[
                  Icon(Icons.share),
                  Text("Shares"),
                ],
              ),
              onPressed: () {},
              onLongPress: () {},
            ),
          ],
        ),
        Divider(
          color: Colors.grey,
          thickness: 10.0,
        ),
      ],
    );
  }
}
