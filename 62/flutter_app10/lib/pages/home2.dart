import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp10/pages/quiz_page.dart';
import 'package:flutterapp10/pages/quiz_page2.dart';
import 'package:flutterapp10/pages/quiz_page3.dart';
import 'package:flutterapp10/pages/quiz_page4.dart';



class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/book.png",
    "images/bien.png",
    "images/sahinh.png",
    "images/nguoi.png",
  ];

  List<String> des = [
    "75 Câu",
    "35 Câu",
    "35 Câu",
    "5 Câu",
  ];

  Widget customcard(String langname2, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 45.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => getjson2(langname2),
          ));
        },
        child: Material(
          color: Colors.lightBlue,
          elevation: 7.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 80.0,
                      width: 80.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname2,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.white,
                        fontFamily: "Alike"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Học lý thuyết",
          style: TextStyle(
            fontFamily: "Quando",
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        children: <Widget>[
          customcard("Hệ thống các biển báo đường bộ", images[1], des[1]),


        ],
      ),
    );
  }
}