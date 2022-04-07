import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap_web_ui/colors.dart';
import 'package:gap_web_ui/data/data.dart';
import 'package:gap_web_ui/widgets/app_bar.dart';
import 'package:gap_web_ui/widgets/circle_button.dart';

class SliderAndInfo extends StatefulWidget {
  @override
  _SliderAndInfoState createState() => _SliderAndInfoState();
}

class _SliderAndInfoState extends State<SliderAndInfo> {
  CarouselController controller=CarouselController();
  int activeIndex = 0;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * .45,
      child: Stack(
        children: [
          Positioned(
              top: size.height * .02, left: 0, right: 0, child: CustomAppBar()),
          Positioned(
              top: size.height * .2,
              right: size.width * .03,
              child: Container(
                width: size.width * .125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: size.width * .1,
                        height: size.width * .1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            image: DecorationImage(
                                image: NetworkImage("https://i.postimg.cc/kgNGwLFQ/4.jpg"),
                                fit: BoxFit.cover)),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: size.width * .02,
                            ),
                          ),
                        )),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Portlalio Showreal",
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: size.height * .05,
              right: 0,
              child: Container(
                width: size.width * .41,
                height: size.height * .47,
               child:  Stack(
              children: [
              Positioned(
              top: 0,
                left: 0,right: 0,
                child: Container(
                  width: size.width * .41,
                  height: size.height * .45,
                  child: CarouselSlider.builder(
                      carouselController: controller,
                      itemCount: imageList.length,
                      itemBuilder:
                          (BuildContext context, int index, realIndex) {
                        return Container(
                          width: size.width,
                          height: size.height*.45,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imageList[index]),
                                  fit: BoxFit.cover)),
                        );
                      },
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                          initialPage: 0,
                          autoPlay: true,
                          reverse: true,
                          viewportFraction: 1)),
                ),
              ),
                Positioned(
              bottom: 0,
              right: size.width*.05,
              child: Container(
                width: size.width * .07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: ()=>controller.nextPage(duration: Duration(milliseconds: 500))
                        ,child: CircleButton(icon: Icon(Icons.arrow_back_ios,color:Colors.white),)),
                    GestureDetector(
                        onTap: ()=>controller.previousPage(duration: Duration(milliseconds: 500))
                        ,child: CircleButton(icon: Icon(Icons.arrow_forward_ios,color:Colors.white),))

                  ],
                ),
              ),
            )
            ],
          ),))
        ],
      ),
    );
  }
}