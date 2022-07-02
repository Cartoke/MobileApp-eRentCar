import 'package:flutter/material.dart';
import 'package:erentcar_mobileapp/components/car/cars_page.dart';
import 'package:erentcar_mobileapp/components/profile/profile_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('eRentCar'),
          ),
          ListTile(
            title: const Text('My Cars'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => cars_page()));
            },
          ),
          ListTile(
            title: const Text('My Profile'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => profile_page()));
            },
          ),
        ],
      ),
    );

    /*Drawer(
      child: Container(
        color: Color.fromRGBO(50,75,205,1),
        child: ListView(
          children: <Widget>[
            const SizedBox(height:48)
          ]
        )
      )
    );*/
  }
}