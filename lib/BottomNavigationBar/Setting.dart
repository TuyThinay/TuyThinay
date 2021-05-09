import 'package:flutter/material.dart';
import 'package:testforntsom/Body/language.dart';
class Setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.blueGrey,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/images.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ATech",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.blue
                            ),
                          ),
                          Text(
                            "Company",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                ListTile(
                  title: Text(
                    "Languages",
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                  subtitle: Text(
                    "English US",
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.lightBlueAccent,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Language()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Profile Settings",
                    style: TextStyle(
                        color: Colors.blue
                    ),
                  ),
                  subtitle: Text(
                    "Jane Doe",

                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.lightBlueAccent,
                  ),
                  onTap: () {},
                ),
                SwitchListTile(
                  title: Text(
                    "Email Notifications",
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  subtitle: Text(
                    "On",style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                  value: true,
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  title: Text("Push Notifications",
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                  subtitle: Text(
                    "Off",style: TextStyle(
                    color: Colors.redAccent
                  ),
                  ),
                  value: false,
                  inactiveThumbColor: Colors.redAccent,
                  onChanged: (val) {},
                ),
                ListTile(
                  leading: Icon(
                      Icons.lock,
                    color: Colors.white,
                  ),
                  title: Text("Logout",style: TextStyle(
                    color: Colors.redAccent
                  ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
