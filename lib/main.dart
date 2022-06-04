import 'package:erentcar_mobileapp/components/reservations/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:erentcar_mobileapp/components/reservations/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Realizar reserva',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: eBackgroundColor
        ),
        scaffoldBackgroundColor: eBackgroundColor2,
        /*Theme.of(context).textTheme.apply(
            bodyColor:Colors.black,
            displayColor: Colors.black),*/
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomeScreen()
    );
  }
}
