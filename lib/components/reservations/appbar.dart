
import 'package:erentcar_mobileapp/components/profile/profile_page.dart';
import 'package:erentcar_mobileapp/components/reservations/reserva_screen.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('eRentCar'),
        centerTitle: true,
        elevation: 10,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person),
              //color: Colors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => profile_page()));
              }
          )
        ],
    );
  }
}