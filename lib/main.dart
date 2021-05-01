
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Body/Cambodia.dart';

void main()=> runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.pink,
            ],
              begin: Alignment.topLeft,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 36, horizontal: 24.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Login',style: TextStyle(
                        color: Colors.blue,
                        fontSize: 46.0,
                        fontWeight: FontWeight.w800,
                      ),),
                    ],
                  ),
                ),
              ),
             Expanded(
               flex: 2,
               child: Container(
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(40),
                     topRight: Radius.circular(30),
                   ),),
                 child: Padding(
                   padding: const EdgeInsets.all(24.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:<Widget> [
                       TextField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(8.0),
                             borderSide: BorderSide.none,
                           ),
                           filled:true,
                           fillColor: Colors.black45,
                           hintText: 'Email',
                           prefixIcon: Icon(
                             Icons.email,
                             color: Colors.black,
                           ),
                         ),
                       ),
                       SizedBox(
                         height: 20.0,
                       ),
                       TextField(
                         obscureText: true,
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(8.0),
                             borderSide: BorderSide.none,
                           ),
                           filled:true,
                           fillColor: Colors.black45,
                           hintText: 'Password',
                           prefixIcon: Icon(
                             Icons.lock,
                             color: Colors.black,
                           ),
                           suffixIcon: Icon(
                             Icons.visibility,
                             color: Colors.black,
                           )
                         ),
                       ),
                       SizedBox(
                         height:10.0),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Forget Password ?',
                               style: TextStyle(
                                 color: Colors.blue,
                                 decoration: TextDecoration.underline,
                                 fontSize: 15,
                               ),
                           ),
                         ],
                       ),
                       SizedBox(
                           height:50.0),
                       Container(
                         width: double.infinity,
                         child: RaisedButton(
                           onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) =>Cambodia()),
                             );
                           },
                           color: Colors.blue,
                           child: Padding(
                             padding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                             child: Text(
                               'Login',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 16.0,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}



