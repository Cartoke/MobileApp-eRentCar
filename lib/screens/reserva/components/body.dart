import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Padding(
         padding:EdgeInsets.all(8.0),
         child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Card(
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                   child: Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Column(
                           children: <Widget>[
                             Text("DIRECCION DE ENTREGA Y DEVOLUCION"),
                             Row(
                               children: [
                                 Image.asset("images/location.png",
                                   height: 150),
                                 Text("Av. Prueba 123")
                                ]
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
                             Text("FECHA DE INICIO"),
                             Row(
                                 children: [
                                   Image.asset("images/calendario.png",
                                       height: 150),
                                   Text("Mayo 04, 1:00 PM")
                                 ]
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
                             Text("FECHA DE DEVOLUCION"),
                             Row(
                                 children: [
                                   Image.asset("images/calendario.png",
                                       height: 150),
                                   Text("MAYO 7, 7:00 PM")
                                 ]
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