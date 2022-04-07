import 'package:flutter/material.dart';
import 'package:gap_web_ui/colors.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(padding: EdgeInsets.symmetric(horizontal: size.height*.03),
      width: size.width,
      height: size.height*.07,
      child: Row(
        children: [
          Container(
            height: size.height,
            width: size.width*.15,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: mainColor,fontWeight: FontWeight.w800
                ),
                prefixIcon: Icon(Icons.search,color: mainColor,)
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            child: Text("Menu",style: TextStyle(
              fontWeight: FontWeight.w800,color: mainColor,fontSize: size.width*.015
            ),),
          ),
          IconButton(icon: Icon(Icons.menu,color: mainColor,size: size.width*.015,))
        ],
      ),
    );
  }
}
