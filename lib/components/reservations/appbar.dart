
import 'package:erentcar_mobileapp/components/reservations/reserva_screen.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return AppBar(
        title: Text('eRentCar'),
        centerTitle: true,
        elevation: 10,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person),
              //color: Colors.black,
              onPressed: (){
              }
          )
        ],
        leading:IconButton(
            icon: Icon(Icons.menu),
            //color: Colors.black,
            onPressed: (){}
        )
    );
  }
}