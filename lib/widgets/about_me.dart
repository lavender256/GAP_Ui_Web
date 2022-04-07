import 'package:flutter/material.dart';
import 'package:gap_web_ui/colors.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

var language = [
  'English',
  'Spaniol',
  'فارسی',
];

class _AboutMeState extends State<AboutMe> {
  String buttonSelectVal;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * .25,
      padding: EdgeInsets.symmetric(vertical: size.height * .04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "GAP",
                style: TextStyle(color: mainColor, fontWeight: FontWeight.w900,fontSize: size.width*.02),
              ),
              Container(
                width: size.width * .06,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      dropdownColor: Colors.white,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                      value: buttonSelectVal,
                      onChanged: (String newValue) {
                        setState(() {
                          buttonSelectVal = newValue;
                        });
                      },
                      hint: Text(
                        "ENG",
                        style: TextStyle(color: mainColor),
                      ),
                      items: language.map((String items) {
                        return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(color: mainColor),
                            ));
                      }).toList()),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: size.width * .2,
                height: size.height * .35,
                decoration: BoxDecoration(color: Colors.red,image: DecorationImage(
                  image: NetworkImage("https://i.postimg.cc/htRhLKx4/1.jpg"),fit: BoxFit.cover
                )),
              ),
              Container(
                  width: size.width * .04,
                  height: size.height * .35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Lg",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Tw",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Fb",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      )
                    ],
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width * .002,
                height: size.height * .3,
                color: Colors.black26,
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height * .1,
                      bottom: size.height * .1,
                      child: Container(
                        width: size.width * .002,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width * .15,
                height: size.height * .3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * .017),
                    ),
                    Text(
                        "I Look at every projects  as\nan unique place of art\nScene and Models are my\ncanvas and camera its my\nbrush Photography is not\najob.its my passion.",style: TextStyle(
                      color: Colors.black54,fontWeight: FontWeight.w700,letterSpacing: 1.2,wordSpacing: 1.2
                    ),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
