import 'package:erentcar_mobileapp/constants.dart';
import 'package:erentcar_mobileapp/screens/reserva/reserva_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              /*Container(
            aligment: Alignment.center,
              child: */Image.asset("images/carrito.png",
                  height: 150),
              //),
              /*Text("Contamos con más de 200 autos, de diferentes precios y especificaciones. Revise nuestra amplia lista",
                  textAlign: TextAlign.center,
                  //style: TextStyle(fontSize:20, fontWeight: FontWeight.bold)
              ),*/
              Center(
                child: /*ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(width: 300),
                  child: */Text("Contamos con más de 200 autos, de diferentes precios y especificaciones. Revise nuestra amplia lista"),
                  //),
                //),
              ),
              //Spacer(),
              TextButton(
                child: Text("Buscar auto"),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReservaScreen())
                  );
                },
              )
            ]
        )
      )
    );
    /*SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
            left: eDefaultPadding,
            top: eDefaultPadding/2,
            bottom: eDefaultPadding/2),
        width: size.width * 0.8,
        height:185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("images/carrito.png")
          )
        )
      )
    );*/
  }

}

/*
* Padding(
      padding: const EdgeInsets.symmetric(horizontal: eDefaultPadding),
      child: Row(
        children: <Widget>[
* */