import 'package:erentcar_mobileapp/components/reservations/appbar.dart';
import 'package:erentcar_mobileapp/components/reservations/bottom_navbar.dart';
import 'package:erentcar_mobileapp/components/reservations/drawer.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'body.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Appbar()
      ),
      body: Body(),
      bottomNavigationBar:BottomNavbar()
    );
  }

}