import 'package:flutter/material.dart';
import 'package:sai_academy/Widgets/icon.dart';
import 'package:sai_academy/Widgets/ratings.dart';

class SubjectsContainer extends StatelessWidget {
  const SubjectsContainer(
      {super.key,
      required this.image,
      required this.topSubjectName,
      required this.ratingNumber,
      required this.title});

  final List<dynamic> image;
  final List<dynamic> topSubjectName;
  final List<dynamic> ratingNumber;
  final String title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      height: screenHeight * 0.4,
      width: screenWidth,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.01,
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.01,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.35,
              width: screenWidth,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.03,
                          vertical: screenWidth * 0.03),
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                              height: screenHeight * 0.2,
                              width: screenWidth * 0.65,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: NetworkImage(image[i]),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              height: screenHeight * 0.1,
                              width: screenWidth * 0.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: screenWidth * 0.01,
                                  ),
                                  FittedBox(
                                      child: Text(
                                    topSubjectName[i],
                                    softWrap: true,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.05,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      FittedBox(
                                          child: Text(
                                        "${numRating[i]}",
                                        softWrap: true,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.05,
                                            color: Colors.brown,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      const icon(
                                        rate: 0.025,
                                      ),
                                      const icon(
                                        rate: 0.025,
                                      ),
                                      const icon(
                                        rate: 0.025,
                                      ),
                                      const icon(
                                        rate: 0.025,
                                      ),
                                      const icon(
                                        rate: 0.025,
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.01,
                                      ),
                                      FittedBox(
                                          child: Text(
                                        "(${ratingNumber[i]})",
                                        softWrap: true,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.05,
                                            color: Colors.brown,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  // Top Subjects Widget....
}

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.screenWidth,
      required this.txt,
      required this.screen});

  final double screenWidth;
  final String txt;
  final double screen;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      softWrap: true,
      maxLines: 2,
      style: TextStyle(
          fontSize: screenWidth * screen,
          color: Colors.blue,
          fontWeight: FontWeight.bold),
    );
  }
}
