import 'package:erentcar_mobileapp/components/reservations/constants.dart';
import 'package:erentcar_mobileapp/components/reservations/reserva_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(8.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(

                      children: <Widget>[
                        Center(
                          child: Text("Contamos con más de 200 autos, de diferentes precios y especificaciones. Revise nuestra amplia lista.")
                        ),
                        TextButton( child: Text("Alquilar un auto"),
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
              ),
             Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                        child: Text("Nosotros podemos trabajar con usted. Si tiene un vehículo sin utilizar, regístrelo aquí y genere ingresos cada mes.")
                        ),
                        TextButton(child: Text("Rentar un auto"),
                            onPressed: (){
                            },
                        )
                      ]
                  )
                  )
                )
            ]
          )
        )
    );
  }

}
