import 'package:flutter/material.dart';

import '../colors.dart';

class CircleButton extends StatelessWidget {
final Icon icon;

CircleButton({this.icon});

@override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
      width: size.width * .03,
      height: size.width * .03,
      decoration: BoxDecoration(
          color: mainColor, shape: BoxShape.circle),
      child: Center(
        child:
          icon,
      ),
    );
  }
}
