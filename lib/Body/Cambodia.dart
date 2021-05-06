
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testforntsom/Body/Notification.dart';
import 'package:testforntsom/BottomNavigationBar/History.dart';
import 'package:testforntsom/BottomNavigationBar/Home.dart';
import 'package:testforntsom/BottomNavigationBar/MyFavorite.dart';
import 'package:testforntsom/BottomNavigationBar/Setting.dart';

class Cambodia extends StatefulWidget {
  @override
  _CambodiaState createState() => _CambodiaState();
}
class _CambodiaState extends State<Cambodia> {
  var currentIndex = 0;

  final List<Widget> _children=[
    Home(),
    History(),
    MyFavorite(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child: ListView(
          children:<Widget> [
            Stack(
             children:<Widget> [
               Container(
                 height: 200,
                 color: Colors.pink,
               ),
               Center(
                 child: Container(
                   margin: EdgeInsets.only(top: 50),
                   height: 90,
                   child: CircleAvatar(
                     radius: 50,
                     backgroundImage: AssetImage('assets/images/images.jpg'),
                     backgroundColor: Colors.white,
                   ),
                 ),
               ),
               Center(
                 child: Container(
                   margin: EdgeInsets.only(top: 120),
                   child: SizedBox(
                     height: 10,
                     width: 50,
                     child: FlatButton(
                       //color: Colors.yellow,
                       onPressed: () { },
                       child: Icon(Icons.camera_alt,color: Colors.white,size: 30,),
                     ),
                   ),
                 ),
               ),
             ],
            ),
            ListTile(
              leading: Icon(Icons.home,size: 30,color: Colors.pink,),
              title: Text("Home",style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.call,size: 30,color: Colors.pink,),
              title: Text("Call",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people,size: 30,color: Colors.pink,),
              title: Text("People",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share,size: 30,color: Colors.pink,),
              title: Text("Share",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.add,size: 30,color: Colors.pink,),
              title: Text("Add",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.map,size: 30,color: Colors.pink,),
              title: Text("Map",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.print,size: 30,color: Colors.pink,),
              title: Text("Print",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings,size: 30,color: Colors.pink,),
              title: Text("Setting",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.person,size: 30,color: Colors.pink,),
              title: Text("Invite Friends",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.toggle_off,size: 30,color: Colors.pink,),
              title: Text("LogOut",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer());
        },),
        title: Text('WELLCOME',style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications,
            size: 35,
            ),
            onPressed: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => NotificationScreen(),
              // );
            },
          ),
        ],
      ),
      body: _children.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            if(index < _children.length ) {
              currentIndex = index;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.time_to_leave),
            title: Text('History'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('MY Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
      ),
    );
  }
  Widget _drawer () {
    return Drawer(
      child: Container(
          width: 10,
          height:100,
          color: Colors.redAccent,
          child: Text('Hello')),
    );
  }
  void onTapIndex(index) {
    //print('${index}');
  }
}
