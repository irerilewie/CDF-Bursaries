
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:login/signup.dart';
void main() =>   runApp(new MaterialApp(
      theme:
           ThemeData(primaryColor: Colors.green, accentColor: Colors.red),
      debugShowCheckedModeBanner: false,


  home: new SplashScreen(),
  routes: <String, WidgetBuilder>{
    '/MyApp': (BuildContext context) => new MyApp()
  },
));
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() =>  _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/MyApp');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.green),
          ),
          Column(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 50.0,
                                child: Icon(
                                  Icons.copyright,
                                  size: 50.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                              ),
                              Text(
                                "NG-CDF BURSARIES",style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 24.0,fontWeight: FontWeight.bold),
                              )
                            ],

                          ),
                        ),
                        Expanded(flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircularProgressIndicator(),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                              ),
                              Text(
                                "NG-CDF BURSARIES",style: TextStyle(color: Colors.white,fontFamily: 'Montserrat', fontSize: 24.0,fontWeight: FontWeight.bold),
                              )

                           ],
                          ),

                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      )



    );
  }
}
