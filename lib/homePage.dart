import 'package:facebook/pages/home.dart';
import 'package:facebook/pages/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var tabIcons = [
  //   {
  //     "icon" : Icons.home
  //   },
  //   {
  //     "icon" : Icons.group
  //   },
  //   {
  //     "icon" : Icons.video_library
  //   },
  //   {
  //     "icon" : Icons.person
  //   },
  //   {
  //     "icon" : Icons.notifications
  //   },
  //   {
  //     "icon" : Icons.dehaze
  //   }
  // ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
          child: Scaffold(
        appBar: AppBar(
          title: Text("facebook", style: TextStyle(color: Colors.blue[900]),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                //search here
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: (){
                //open messanger
              },
            )
          ],
          bottom: TabBar(
            
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.video_library),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
              Tab(
                icon: Icon(Icons.dehaze),
              ),
              // ...tabIcons.map((tab){
              //   return Tab(
              //     icon: Icon(tab["icon"]),
              //   );
              // }).toList(),
      
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Home(),
            Center(
              child: Text("Groups"),
            ),
            Center(
              child: Text("Videos"),
            ),
           Profile(),
            Center(
              child: Text("Notificatons"),
            ),
            Center(
              child: Text("Menus"),
            ),
          ],
        ),
      ),
    );
  }
}