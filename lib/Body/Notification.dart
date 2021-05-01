import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testforntsom/model/student.dart';
class NotificationScreen extends StatefulWidget {
  final List<Student> list;
  NotificationScreen({
   required this.list
}) {
    print('NotificationScreen'+this.list.toString());
  }

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('ID',style: TextStyle(
                      fontSize: 20,
                    ),),),
                    DataColumn(label: Text('FirstName',style: TextStyle(
                      fontSize: 20,
                    ),)),
                    DataColumn(label: Text('LastName',style: TextStyle(
                      fontSize: 20
                    ),)),
                    DataColumn(label: Text('Department',style: TextStyle(
                      fontSize: 20
                    ),)),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(
                        Text(
                          widget.list[0].id.toString(),style: TextStyle(
                          fontSize: 20
                        ),
                        )
                      ),
                      DataCell(
                        Text(widget.list[0].firstName.toString(),style: TextStyle(
                          fontSize: 20
                        ),),
                      ),
                      DataCell(
                        Text(
                          widget.list[0].lastName.toString(),style: TextStyle(
                          fontSize: 20
                        ),
                        )
                      ),
                      DataCell(
                        Text(
                          widget.list[0].department.toString(),style: TextStyle(
                          fontSize: 20
                        ),
                        )
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

