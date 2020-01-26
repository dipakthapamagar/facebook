import 'package:facebook/Json/json.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var storyList = Json.json;
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          ...storyList.map((item) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Image.network(
                  "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
                  height: 200.0,
                  width: 100.0,
                ),
              ),
            );
          })
        ],
      ),
      scrollDirection: Axis.horizontal,
    );
  }
}
