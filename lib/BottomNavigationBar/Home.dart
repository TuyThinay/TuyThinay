import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testforntsom/Newhome/data.dart';
import 'package:testforntsom/Newhome/menu.dart';
class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print('size: ${size.width}');
    double width=(size.width/3) - 30;
    double top =  ((width-30)/2)/2;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:Container(
        margin: EdgeInsets.only(top: 15, left: 15,right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Menu()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Container(
                              width: 50,
                              height: 30,
                             margin: EdgeInsets.only(left: (width - 60) / 2,top: top, bottom: top+10),
                              child: Center(child: Icon(Icons.menu,size: 60,))
                        ),
                        Stack(
                          children:<Widget> [
                            Container(
                              width: width,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )
                              ),
                              child: Center(child: Text('MENU',style: TextStyle(
                                color: Colors.white
                              ),),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Menu()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Container(
                            width: 50,
                            height: 30,
                            margin: EdgeInsets.only(left: (width - 60) / 2,top: top, bottom: top+10),
                            child: Center(child: Icon(Icons.people,size: 60,))
                        ),
                        Stack(
                          children:<Widget> [
                            Container(
                              width: width,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )
                              ),
                              child: Center(child: Text('PEOPLE',style: TextStyle(
                                  color: Colors.white
                              ),),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Menu()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Container(
                            width: 50,
                            height: 30,
                            margin: EdgeInsets.only(left: (width - 60) / 2,top: top, bottom: top+10),
                            child: Center(child: Icon(Icons.share,size: 60,),)
                        ),
                        Stack(
                          children:<Widget> [
                            Container(
                              width: width,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )
                              ),
                              child: Center(child: Text('SHARE',style: TextStyle(
                                  color: Colors.white
                              ),),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Data()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Container(
                            width: 50,
                            height: 30,
                            margin: EdgeInsets.only(left: (width - 60) / 2,top: top, bottom: top+10),
                            child: Center(child: Icon(Icons.table_chart,size: 60,))
                        ),
                        Stack(
                          children:<Widget> [
                            Container(
                              width: width,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )
                              ),
                              child: Center(child: Text('TABLE',style: TextStyle(
                                  color: Colors.white
                              ),),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


