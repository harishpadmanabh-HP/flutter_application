import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'signup.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        "/signup":(BuildContext context)=>new SignupPage()
      },
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 111.0, 0.0, 0.0),
                  child: Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Monster'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 200.0, 0.0, 0.0),
                  child: Text(
                    "There",
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Monster'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(250.0, 200.0, 0.0, 0.0),
                  child: Text(
                    ".",
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 0.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                          fontFamily: "Monster",
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
                SizedBox(height: 25.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        fontFamily: "Monster",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 25.0),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                  child: InkWell(
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Monster',
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.grey,
                    color: Colors.green,
                    elevation: 10.0,
                    child: GestureDetector(
                      onTap: () =>showAboutDialog(context: context),
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Monster',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 40.0, //button ht
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/signup");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: ImageIcon(AssetImage("images/login.jpg")),
                          ),
                          SizedBox(width: 25.0),
                          Center(
                            child: Text(
                              "SIGN UP HERE!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Monster",
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Center(
            child: Text(
              "Happy Day",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Monster",
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
  void _showToast(BuildContext context) {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
