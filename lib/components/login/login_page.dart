import 'package:flutter/material.dart';
import 'package:erentcar_mobileapp/components/car/cars_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class login_page extends StatefulWidget {
  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x6600afff),
                      Color(0x9900afff),
                      Color(0x9900afff),
                      Color(0xff00afff),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage("lib/assets/logo.png"),
                      width: 100
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
                                  icon: Icon(Icons.person, color: Colors.white),
                                  hintText: "Put your email",
                                  hintStyle: TextStyle(color: Colors.white)
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              TextFormField(
                                obscureText: showPassword,
                                decoration: InputDecoration(
                                  //labelText: "Enter password:"
                                    icon: Icon(Icons.vpn_key, color: Colors.white),
                                    hintText: "Put your password",
                                    hintStyle: TextStyle(color: Colors.white),
                                    suffix: IconButton(onPressed: (){
                                      setState(() {
                                        if (showPassword) {
                                          showPassword = false;
                                        } else {
                                          showPassword = true;
                                        }
                                      });
                                    }, icon: Icon(showPassword == true?Icons.remove_red_eye:Icons.visibility_off_sharp),
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
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => cars_page()));
                                },
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
                                onPressed: pushNext,
                              )
                            ]
                          )
                        ),
                      ),
                    )
                  ],
                )
              )
            ],
          )
        ),
      ),
    );
  }

  void pushNext() {
    final _formKey = GlobalKey<FormState>();

    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (BuildContext context){
            return Scaffold(
              body: AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle.light,
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0x6600afff),
                                Color(0x9900afff),
                                Color(0x9900afff),
                                Color(0xff00afff),
                              ]
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                padding: EdgeInsets.only(right: 300),
                                onPressed: () { Navigator.pop(context);},
                                icon: Icon(Icons.arrow_back_ios_outlined),
                                iconSize: 30,
                            ),
                            Image(
                              image: AssetImage("lib/assets/logo.png"),
                              width: 100
                            ),
                            Text(
                              "Complete with your personal information",
                              textAlign: TextAlign.center
                            ),
                            Form(
                              key: _formKey,
                              child: Theme(
                                data: ThemeData(
                                    brightness: Brightness.dark, primarySwatch: Colors.lightBlue,
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
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter name',
                                          ),
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Name invalid';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter last name',
                                          ),
                                          keyboardType: TextInputType.text,
                                          obscureText: true,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Last Name invalid';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter email',
                                          ),
                                          keyboardType: TextInputType.emailAddress,
                                          obscureText: true,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Email invalid';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter password',
                                          ),
                                          keyboardType: TextInputType.visiblePassword,
                                          obscureText: true,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Password invalid';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      MaterialButton(
                                        height: 30,
                                        minWidth:60,
                                        color: Colors.lightBlue,
                                        textColor: Colors.white,
                                        child: Text("Sign In"),
                                        onPressed: (){
                                          if (_formKey.currentState!.validate()) {
                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => cars_page()));
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text('Processing Data')),
                                            );
                                          }
                                        },
                                        splashColor: Colors.blueAccent,
                                      )
                                    ],
                                  )
                                )
                              ),
                            )
                          ],
                        ),
                      )
                    ]
                  ),
                )
              ),
            );
          }),
    );
  }
}