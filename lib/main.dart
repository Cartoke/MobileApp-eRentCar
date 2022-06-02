import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("lib/assets/background.jpg"),
            fit: BoxFit.cover,
            color: Colors.black26,
            colorBlendMode: BlendMode.luminosity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("lib/assets/logo.png"),
              ),
              RichText(
                text: TextSpan(
                  text: "eRentCar",
                  style: TextStyle(
                    color: Color(0xffe8e8ef),
                    fontSize: 60,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              Text(
                "Welcome to eRentCar Mobile App",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffe8e8ef)
                ),
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark, primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20
                      )
                    )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter e-mail:"
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter password:"
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 60)
                        ),
                        MaterialButton(
                            height: 40,
                            minWidth:60,
                            color: Colors.lightBlue,
                            textColor: Colors.white,
                            child: Text("Sign In"),
                            onPressed: () => {},
                            splashColor: Colors.blueAccent,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

