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
  bool showPassword = true;

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
                            icon: Icon(Icons.person),
                            hintText: "Put your email"
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          obscureText: showPassword,
                          decoration: InputDecoration(
                            //labelText: "Enter password:"
                              icon: Icon(Icons.vpn_key),
                              hintText: "Put your password",
                              suffix: IconButton(onPressed: (){
                                setState(() {
                                  if (showPassword) {
                                    showPassword = false;
                                  } else {
                                    showPassword = true;
                                  }
                                });
                              }, icon: Icon(showPassword == true?Icons.remove_red_eye:Icons.password),
                              )
                          ),
                          keyboardType: TextInputType.text,
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
                        Text(
                          "Complete with your personal information",
                          textAlign: TextAlign.center,
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

