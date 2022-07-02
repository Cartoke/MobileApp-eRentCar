import 'package:erentcar_mobileapp/components/reservations/constants.dart';
import 'package:erentcar_mobileapp/components/reservations/reserva/reserva_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  /*Future<String> fetchAlbum() async {
    var response = await http.get(Uri.parse('https://erentcar.herokuapp.com/api/v1/cars/1'));
    print(response.body);
    return response.body;
  }*/

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
                                Text("Realizar una reserva",
                                    style: Theme.of(context).textTheme.headline5),
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
                  //Image.asset("assets/images/carrito.png",height: 150),
                  Container(
                      child: Column(
                          children:<Widget>[
                            Image(
                                image: AssetImage("lib/assets/carrito.png"),
                                width: 100
                            ),
                            Text("¿Ya tiene una reserva?",
                                style: Theme.of(context).textTheme.headline6),
                            TextButton(
                                child: Text("Buscar auto"),
                                onPressed: (){}
                            ),
                          ]
                      )
                  ),
                  Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                              children: <Widget>[
                                Text("Quiero ser parte de eRentCar",
                                    style: Theme.of(context).textTheme.headline5),
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
                  ),
                  //Text(fetchAlbum().toString())
                ]
            )
        )
    );
  }

}

