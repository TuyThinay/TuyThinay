import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testforntsom/Body/Notification.dart';
import 'package:testforntsom/model/student.dart';
class Data extends StatelessWidget {
  final List<Student> list=[];
  TextEditingController idController=new TextEditingController();
  TextEditingController fNameController=new TextEditingController();
  TextEditingController lNameController=new TextEditingController();
  TextEditingController deController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Data',style: TextStyle(
          fontSize: 30,
        ),),
      ),
      body: Center(
        child: Column(
          children:<Widget> [
            Container(
              margin: EdgeInsets.all(30),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ID Number',
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: 420,
                  child: TextField(
                    controller: fNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'FirstName',
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: 420,
                  child: TextField(
                    controller: lNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'LastName',
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 420,
                  child: TextField(
                    controller: deController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Department',
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.redAccent,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10,),
              ),
              onPressed: () {
                String firstName ='fist name';
                Student stu=new Student(id:int.parse(idController.text), firstName: fNameController.text, lastName: lNameController.text, department: deController.text);
                list.add(stu);
               // print(list.toString());
                print(''+idController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>NotificationScreen(list: this.list)),
                );
              },
              child: Text("Add"),
            ),
          ],
        ),
      )
    );
  }
}
