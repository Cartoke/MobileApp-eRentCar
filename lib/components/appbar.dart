
import 'package:erentcar_mobileapp/screens/reserva/reserva_screen.dart';
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
              color: Colors.black,
              onPressed: (){
              }
          )/*,
          Text('Sofia')
          TextButton.icon(
            onPressed: () {},
            icon: Icon( // <-- Icon
              Icons.person,
              size: 24.0,
            ),
            label: Text('Sofia'), // <-- Text
          )*/
        ],
        leading:IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: (){}
        )
    );
  }
}