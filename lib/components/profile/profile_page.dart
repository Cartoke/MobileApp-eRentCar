import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile_page extends StatefulWidget{
  @override
  _profile_pageState createState() => _profile_pageState();
}
class _profile_pageState extends State<profile_page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Container(
           width: 130,
           height: 130,
           decoration: BoxDecoration(
             border: Border.all(width: 4, color: Colors.white),
             boxShadow: [
               BoxShadow(
                 spreadRadius: 2,
                 blurRadius: 10,
                 color: Colors.black.withOpacity(0.1)
               )
             ],
             shape: BoxShape.circle,
             image: DecorationImage(
               fit: BoxFit.cover,
               image: NetworkImage(
                  'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
                      )
               )
             ),
            ),
          Padding(
              padding: EdgeInsets.only(top: 10)
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
                hintText: "Full Name",
                hintStyle: TextStyle(color: Colors.blueAccent)
            ),
            keyboardType: TextInputType.text,
          ),
          Padding(
              padding: EdgeInsets.only(top: 10)
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Full Last Name",
                hintStyle: TextStyle(color: Colors.blueAccent)
            ),
            keyboardType: TextInputType.text,
          ),
          Padding(
              padding: EdgeInsets.only(top: 10)
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Phone",
                hintStyle: TextStyle(color: Colors.blueAccent)
            ),
            keyboardType: TextInputType.phone,
          ),
          Padding(
              padding: EdgeInsets.only(top: 10)
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.blueAccent)
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          MaterialButton(
            height: 30,
            minWidth: 50,
            color: Colors.deepOrange,
            textColor: Colors.white,
            child: Text("Register"),
            onPressed: () =>{},
          )
           ]
         )
      );
  }
}