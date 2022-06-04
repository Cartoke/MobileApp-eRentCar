import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
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
                    image: AssetImage("images/location.png")
                )
            )
        )
    );
  }

}