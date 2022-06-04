import 'package:flutter/material.dart';
import 'package:erentcar_mobileapp/constants.dart';

class BottomNavbar extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
        /*padding: EdgeInsets.symmetric(
            horizontal: eDefaultPadding,
            vertical: eDefaultPadding*2,
        ),*/
        margin: EdgeInsets.only(
            bottom: eDefaultPadding/2,
            top: eDefaultPadding/2,
        ),
        height:30,
        decoration: BoxDecoration(
          color: eBackgroundColor,
          border: Border(
              top: BorderSide(width: 2.0, color: Colors.black26)
          )
          /*boxShadow: [
            BoxShadow(
                offset: Offset(0,-10),
                //blurRadius: 35,
                //color: kPrimaryColor.withOpacity(0.38)
            )
          ]*/
        ),
        child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.phone),
                  color: Colors.white,
                  onPressed: (){}
              ),
              Text("¿Tiene alguna duda? Comuníquese con 555-5555",
                  style: TextStyle(color: Colors.white))
            ]
        )
    );
  }
}