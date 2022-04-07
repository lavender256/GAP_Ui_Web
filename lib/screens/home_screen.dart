import 'package:flutter/material.dart';
import 'package:gap_web_ui/colors.dart';
import 'package:gap_web_ui/widgets/about_me.dart';
import 'package:gap_web_ui/widgets/home_screen_main_image.dart';
import 'package:gap_web_ui/widgets/slider_and_info.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                child:  AboutMe()),
            Positioned(
                left: size.width*.25,
                child: HomeScreenMainImage()),
            Positioned(
                right: 0,
                child: SliderAndInfo()),
            Positioned(
                top: size.height*.15,
                right: size.width*.23,
                child:Text("Gordon\nAtherton\nPhotography",style: TextStyle(
              color: mainColor,fontWeight: FontWeight.w800,fontSize: size.width*.045,letterSpacing: 1.2
            ),))
          ],
        ),
      ),
    );
  }
}
