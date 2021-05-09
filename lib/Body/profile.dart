import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Profile',style: TextStyle(
          color: Colors.red,
          fontSize: 20,
        ),),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 150,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.only(left: 210,top: 30),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 40,
              backgroundImage: AssetImage('assets/images/images.jpg'),
            ),
          ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 150),
            height: 800,
            color: Colors.white,
            child:  Column(
              children: [
                ListTile(
                  title: Text('notifications',style: TextStyle(
                    color: Colors.red,
                  ),),
                  leading: Icon(Icons.notifications,size: 30,color: Colors.black,)),
                SwitchListTile(
                  value: true,
                  title: Text("email notifications",style: TextStyle(
                    color: Colors.red,
                  ),),
                  onChanged: (value) {},
                  secondary: SizedBox(
                    width: 10,
                  ),
                ),
                SwitchListTile(
                  value: false,
                  title: Text("push notifications"),
                  onChanged: (value) {},
                  secondary: SizedBox(
                    width: 10,
                  ),
                ),
                _buildDivider(),
                ListTile(
                  title: Text(
                    "privacy",
                  ),
                  leading: Icon(Icons.person,color: Colors.black,size: 30,),
                ),
                RadioListTile(
                  value: true,
                  groupValue: true,
                  title: Text("private"),
                  onChanged: (value) {},
                  secondary: SizedBox(
                    width: 10,
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                RadioListTile(
                  value: false,
                  groupValue: true,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text("public"),
                  onChanged: (value) {},
                  secondary: SizedBox(
                    width: 10,
                  ),
                ),
                _buildDivider(),
                ListTile(
                  title: Text("feedback"),
                  subtitle: Text("we would love to hear your experience"),
                  leading: Icon(Icons.feedback,size: 30,color: Colors.black,),
                ),
                ListTile(
                  title: Text("terms and conditions"),
                  subtitle: Text("legal, terms and conditions"),
                  leading: Icon(Icons.access_alarm,size: 30,color: Colors.black,),
                ),
                ListTile(
                  title: Text("logout"),
                  subtitle: Text("you can logout from here"),
                  leading: Icon(Icons.exit_to_app,size: 30,color: Colors.black,),
                ),
              ],
            ),
            ),
          ),
        ],
      )
    );
  }
  Padding _buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: Divider(
        color: Colors.black,
      ),
    );
  }
}
