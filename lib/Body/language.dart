import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}
enum SingingCharacter { lafayette,three, jefferson}
class _LanguageState extends State<Language> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Language',style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),),
      ),
      body: Container(
        color: Colors.white,
        width: 500,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 300,top: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/language/cambodia.png'),
                  ),
                ),
                Column(
                  children: [
                     Container(
                      margin: EdgeInsets.only(top: 40,left: 120),
                      child: Text('ខ្មែរ',style: TextStyle(
                          color: Colors.red,
                          fontSize: 20
                      ),),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40,left: 350),
                  child: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 300,top: 190),
                  child: CircleAvatar(
                    backgroundColor: Colors.tealAccent,
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/language/english.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 210,left: 120),
                  child: Text('English',style: TextStyle(
                      color: Colors.red,
                      fontSize: 20
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top:195,left: 350),
                  child: Radio<SingingCharacter>(
                    value: SingingCharacter.three,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 300,top: 350),
                  child: CircleAvatar(
                    backgroundColor: Colors.tealAccent,
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/language/china.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 370,left: 120),
                  child: Text('中国人 ',style: TextStyle(
                      color: Colors.red,
                      fontSize: 20
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(top:360,left: 350),
                  child:Radio<SingingCharacter>(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}