import 'package:erentcar_mobileapp/components/reservations/appbar.dart';
import 'package:erentcar_mobileapp/components/reservations/bottom_navbar.dart';
import 'package:erentcar_mobileapp/components/reservations/body.dart';
import 'package:erentcar_mobileapp/components/reservations/drawer.dart';
import 'package:erentcar_mobileapp/components/reservations/reserva/body.dart';
import 'package:flutter/material.dart';

class ReservaScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        drawer: MyDrawer(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Appbar()
      ),
      body: MyBody(),
      bottomNavigationBar: BottomNavbar()
    );
  }
}