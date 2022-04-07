import 'package:flutter/material.dart';

class HomeScreenMainImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width*.3,
      height: size.height,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage("https://i.postimg.cc/R0XFxfYq/5.jpg"),fit: BoxFit.cover
    )
  ),
    );
  }
}
