import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:erentcar_mobileapp/components/login/login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

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
      home: login_page(),
    );
  }
}

