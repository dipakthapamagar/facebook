import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                color: Colors.grey,
                child: Stack(
                  // alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    // Container(
                      
                    //   padding: EdgeInsets.all(10.0),
                    //   height: 180.0,
                    //   child: 
                      
                    // ),
                    Image.network("https://www.sleekcover.com/covers/just-live-facebook-cover.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          child: Image.network("http://bootdey.com/img/Content/avatar/avatar7.png",
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                          // backgroundImage: ImageProvider(),
                          backgroundColor: Colors.white,
                          // radius: 70.0,
                          minRadius: 10.0,
                          maxRadius: 70.0,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}