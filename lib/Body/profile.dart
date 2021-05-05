import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Profile'),
      ),
      body: SafeArea(
        child: ListView(
          children:<Widget> [
           Container(
             color: Colors.blueGrey,
             height: 200,
             child: Center(
               child: Container(
                 width: 100,
                 height: 100,
                 child: Stack(
                   children: <Widget>[
                     Center(
                       child: Container(
                         height: 90,
                        // margin: EdgeInsets.only(top: 60),
                         child: CircleAvatar(
                           backgroundImage: AssetImage('assets/images/images.jpg'),
                           radius: 50,
                           backgroundColor: Colors.white,
                         ),
                       ),
                     ),
                     Center(
                       child: Container(
                         margin: EdgeInsets.only(top: 80),
                         child: SizedBox(
                           height: 50,
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
               ),
             ),
           ),
            Container(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(right: 300,top: 20),
                  child: Column(
                    children: [
                      //SizedBox(height: 20,),
                      Text('Account',style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 260),
              child: Column(
                children:<Widget> [
                  Text('+8854546554',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 310),
              child: Column(
                children:<Widget> [
                  Text('ATech',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 150),
              child: Column(
                children:<Widget> [
                  Text('ATech2222@gmail.com',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(
              color: Colors.black,
              height: 5,
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.notifications,size: 30,color: Colors.pink,),
                    title: Text("Home",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.lock,size: 30,color: Colors.pink,),
                    title: Text("Privacy",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.time_to_leave_outlined,size: 30,color: Colors.pink,),
                    title: Text("Data and Storage",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.device_hub,size: 30,color: Colors.pink,),
                    title: Text("Deice",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.menu,size: 30,color: Colors.pink,),
                    title: Text("Menu",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.map,size: 30,color: Colors.pink,),
                    title: Text("Map",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.work,size: 30,color: Colors.pink,),
                    title: Text("Work",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.camera,size: 30,color: Colors.pink,),
                    title: Text("Camera",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.people,size: 30,color: Colors.pink,),
                    title: Text("People",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Column(
                children:<Widget> [
                  ListTile(
                    leading: Icon(Icons.tv,size: 30,color: Colors.pink,),
                    title: Text("TV",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
