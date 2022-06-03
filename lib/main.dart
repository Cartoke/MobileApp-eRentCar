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
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Color(0xff91b5c9),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("lib/assets/logo.png"),
                width: 100,
              ),
              RichText(
                text: TextSpan(
                  text: "eRentCar",
                  style: TextStyle(
                    color: Color(0xff000000),
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
                  color: Color(0xff000000)
                ),
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark, primarySwatch: Colors.lightBlue,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.deepOrange,
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
                            hintText: "Put your email"
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            //labelText: "Enter password:"
                              hintText: "Put your password"
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10)
                        ),
                        MaterialButton(
                            height: 30,
                            minWidth:60,
                            color: Colors.lightBlue,
                            textColor: Colors.white,
                            child: Text("Sign In"),
                            onPressed: pushNext,
                            splashColor: Colors.blueAccent,
                        ),
                        Divider(
                          height: 50,
                          thickness: 1.5,
                          indent: 30,
                          endIndent: 30,
                          color: Color(0xff000000),
                        ),
                        Text(
                            "If you don't have an account. Register now. It's free!",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)
                            ),
                        ),
                        MaterialButton(
                          height: 30,
                          minWidth: 50,
                          color: Colors.deepOrange,
                          textColor: Colors.white,
                          child: Text("Register"),
                          onPressed: () => {},

                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void pushNext() {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (BuildContext context){
            return Scaffold(
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
                          width: 100,
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
            );
          }),
    );
  }
}

