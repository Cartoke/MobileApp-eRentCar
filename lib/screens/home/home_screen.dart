import 'package:erentcar_mobileapp/components/appbar.dart';
import 'package:erentcar_mobileapp/components/bottom_navbar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/body.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Appbar()
      ),
      body: Body(),
      bottomNavigationBar:BottomNavbar()
    );
  }

}