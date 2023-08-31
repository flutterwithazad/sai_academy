import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sai_academy/Widgets/ratings.dart';

import 'icon.dart';

class BlackBackgroundContainer extends StatelessWidget {
  const BlackBackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    List numRating = [5.0, 4.9, 5.0, 5.0, 4.9];

    return Container(
      color: const Color(0xff343A43),
      height: screenHeight * 0.4,
      width: screenWidth,
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: SizedBox(
                height: screenHeight * 0.03,
                width: screenWidth,
                child: Text(
                  "Students LIVE Feedback",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: screenWidth * 0.05),
                ),
              ),
            ),
            FittedBox(
              child: SizedBox(
                height: screenHeight * 0.06,
                width: screenWidth,
                child: Text(
                  "We Love to read them",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenHeight * 0.04),
                ),
              ),
            ),
            CarouselSlider.builder(
                itemCount: name.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.all(Radius.circular(12))),
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.7,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: screenHeight * 0.03,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                NetworkImage(studentImg[index]),
                              ),
                              SizedBox(width: screenWidth * 0.03),
                              Column(
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      height: screenHeight * 0.03,
                                      width: screenWidth * 0.5,
                                      child: Text(
                                        name[index],
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize:
                                            screenWidth * 0.05,
                                            fontWeight:
                                            FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    child: SizedBox(
                                      height: screenHeight * 0.02,
                                      width: screenWidth * 0.5,
                                      child: Text(
                                        courseName[index],
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize:
                                            screenHeight * 0.02),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenWidth * 0.02,
                          ),
                          FittedBox(
                            child: SizedBox(
                              height: screenHeight * 0.1,
                              width: screenWidth * 0.8,
                              child: Text(
                                ratingComment[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenHeight * 0.03),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const icon(rate: 0.03,),
                              const icon(rate: 0.03,),
                              const icon(rate: 0.03,),
                              const  icon(rate: 0.03,),
                              Icon(
                                Icons.star_half_rounded,
                                color: Colors.orange,
                                size: screenHeight * 0.03,
                              ),
                              SizedBox(width: screenWidth *0.01,),
                              Text(
                                "${numRating[index]}",
                                style: TextStyle(
                                    fontSize: screenWidth * 0.06,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.easeOutBack,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlayInterval:const  Duration(seconds: 3)))
          ],
        ),
      ),
    );
  }

}
