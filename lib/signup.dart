import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'SUDO LOGIN',
            theme: ThemeData(
                primarySwatch: Colors.orange,
            ),
            home: MyHomePage(title: 'CAll ME SUDO'),

       );
    }
}
class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);

        final String title;
        _MyHomePageState createState() =>_MyHomePageState();
    }
class _MyHomePageState extends State<MyHomePage> {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

    @override
    Widget build(BuildContext context) {

        final emailField = TextField(
            obscureText: false,
            style: style,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Email",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
        );
        final password = TextField(
            obscureText: false,
            style: style,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Password",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
        );
        final passwordField1 = TextField(
            obscureText: true,
            style: style,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Confirm Password",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final loginButton = Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(40.0),
            color: Colors.orange,
            child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                onPressed: () {},
                child: Text("Sign Up",
                    textAlign: TextAlign.left,
                    style: style.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
            ),
        );
        final login1 = Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(40.0),
            color: Colors.orange,
            child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                onPressed: () {},
                child: Text("Already have an account?",
                    textAlign: TextAlign.left,
                    style: style.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
            ),
        );

        return Scaffold(
            body: Center(
                child: Container(
                    color: Colors.white,
                    child: Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                SizedBox(
                                   height: 80.0,
                                    child: Image.asset(
                                        "assets/cdf.png",
                                        fit: BoxFit.contain,
                                    ),
                                ),
                                SizedBox(height: 55.0),
                                emailField,
                                SizedBox(height: 35.0),
                                password,
                                SizedBox(height: 25.0),
                                passwordField1,
                                SizedBox(
                                    height: 35.0,
                                ),
                                loginButton,
                                SizedBox(
                                    height: 15.0,
                                ),
                                login1,
                                SizedBox(
                                    height: 15.0,
                                )
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}
