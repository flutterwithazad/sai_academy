import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:sai_academy/AboutUs.dart';
import 'package:sai_academy/Splash_Screen.dart';
import 'package:sai_academy/Widgets/ContactUs.dart';
import 'package:sai_academy/Widgets/blackBackgroundContainer.dart';
import 'package:sai_academy/Widgets/fittedbox.dart';
import 'package:sai_academy/Widgets/subjectsContainer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  late StreamSubscription subscription;

  var isDeviceConnected = false;

  bool isAlertSet = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getConnectivity();
  }

  getConnectivity() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      isDeviceConnected = await InternetConnectionChecker().hasConnection;

      if (!isDeviceConnected && isAlertSet == false) {
        showDialogBox();
        setState(() {
          isAlertSet = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List title = ["Mentors", "Q-Rated Content", "Education", "Reviews"];
    List description = [
      "Start learning from the mentors coming from giant corporations like Akash, Physics Wallah, allen, etc.",
      "Unlock quality content with Q-Rated content",
      "Learn with our experts who experienced with top companies",
      "You can check our reviews on google."
    ];

    List topSubjectsImages = [
      "https://t3.ftcdn.net/jpg/04/27/28/24/360_F_427282424_RckILFjxS4J6LO1LnGSG9zbaUHdz0inH.jpg",
      "https://www.iastoppers.com/uploads/articles/Northeas--opposes-Hindi-as-a-compulsory-school-subject.jpg",
      "https://www.giasuib.com/wp-content/uploads/2020/07/igcse-math-co-phai-la-mon-hoc-bat-buoc-1.jpg",
      "https://cxc.academy/wp-content/uploads/2020/12/physics-1.jpg",
      "https://as1.ftcdn.net/v2/jpg/04/07/37/74/1000_F_407377427_cAi21m47R3TLy1vulqo0W7P9aWV9eiQ7.jpg"
    ];

    List topSubjectName = [
      "English -- (1st to 12th)",
      "Hindi -- (1st to 12th)",
      "Mathematics -- (1st to 12th)",
      "Physics -- (8th to 12th)",
      "Biology -- (8th to 12th)"
    ];

    List ratingNumber = ["567", "43", "532", "443", "1k+"];

    List topSubjectName2 = [
      "UPSE Exam",
      "JEE Exam",
      "SSC Exam",
      "CTET Exam",
      "NEET Exam"
    ];

    List subjectTopImages2 = [
      "https://www.pw.live/files001/general%20preparation%20strategy%20of%20toppers%20for%20UPSC.png",
      "https://www.pw.live/files001/JEE%20Exam.jpg",
      "https://www.pw.live/files001/ssc-exam--seo.png",
      "https://images.shiksha.com/mediadata/images/articles/1653393633phphF03nQ.jpeg",
      "https://www.pw.live/files001/neet.png"
    ];
    List ratingNumber2 = ["637", "335", "786", "3k+", "2k+"];

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final List<IconData> icondata = [
      Icons.people,
      Icons.document_scanner,
      Icons.cast_for_education_outlined,
      Icons.reviews_outlined
    ];
    List numRating = [5.0, 4.9, 5.0, 5.0, 4.9];

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/images/CipherImage.png",
              fit: BoxFit.contain,
              height: 45,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Sai Academy",
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: const Icon(
                Icons.search_outlined,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_sharp,
              )),
        ],
      ),
      drawer: const sideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            SizedBox(
              // color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: FittedBox(
                      child: RichText(
                          maxLines: 2,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          softWrap: true,
                          text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: screenWidth * 0.2,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                const TextSpan(text: "Welcome to"),
                                TextSpan(
                                    text: " the Future",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: screenWidth * 0.2)),
                                const TextSpan(text: " of Learning"),
                              ])),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                    child: Text(
                      "Start Learning by best creators at",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  FittedBox(
                      child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText("SAI ACADEMY",
                          speed: const Duration(milliseconds: 200),
                          textStyle: TextStyle(
                              fontSize: screenWidth * 0.08,
                              color: Colors.orange,
                              fontWeight: FontWeight.w500))
                    ],
                    repeatForever: true,
                  )),
                  SizedBox(
                    height: screenWidth * 0.06,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.4,
                          child: const Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 90,
                                bottom: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage:
                                        AssetImage('assets/images/harshit.png'),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 50,
                                bottom: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage:
                                        AssetImage('assets/images/anurag.png'),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 10,
                                bottom: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: CircleAvatar(
                                    radius: 23,
                                    backgroundImage:
                                        AssetImage('assets/images/rajan.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 4),
                          child: Column(
                            children: [
                              FittedBox(
                                child: Text(
                                  "50+",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.06,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              FittedBox(
                                child: Text("Teachers",
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.03,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: screenHeight,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  "4.8/5.0",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.06,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: screenWidth * 0.05,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.001,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: screenWidth * 0.05,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.001,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: screenWidth * 0.05,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.001,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: screenWidth * 0.05,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.001,
                                  ),
                                  Icon(
                                    Icons.star_half_outlined,
                                    color: Colors.orange,
                                    size: screenWidth * 0.05,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.01,
                                  ),
                                  FittedBox(
                                    child: Text("Ratings",
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.05)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            carousalWidget(title, description, icondata, numRating),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const fittedbox(
                        text: "15k+",
                        size: 0.04,
                        color: Colors.orange,
                      ),
                      const fittedbox(
                        text: "Students",
                        size: 0.03,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.4,
                      ),
                      const fittedbox(
                        text: "10K+",
                        size: 0.04,
                        color: Colors.orange,
                      ),
                      const fittedbox(
                        text: "Certificates Delivered",
                        size: 0.03,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.4,
                      ),
                      const fittedbox(
                          text: "15+", size: 0.04, color: Colors.orange),
                      const fittedbox(
                        text: "Branches",
                        size: 0.03,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    const fittedbox(
                      text: "50+",
                      size: 0.04,
                      color: Colors.orange,
                    ),
                    const fittedbox(
                      text: "Mentors",
                      size: 0.03,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.4,
                    ),
                    const fittedbox(
                      text: "110+",
                      size: 0.04,
                      color: Colors.orange,
                    ),
                    const fittedbox(
                      text: "Courses",
                      size: 0.03,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.4,
                    ),
                    const fittedbox(
                        text: "10+", size: 0.04, color: Colors.orange),
                    const fittedbox(
                      text: "Competitive Exam",
                      size: 0.03,
                      color: Colors.black,
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            const BlackBackgroundContainer(),
            SubjectsContainer(
              image: topSubjectsImages,
              topSubjectName: topSubjectName,
              ratingNumber: ratingNumber,
              title: 'Top Subjects',
            ),
            Container(
              height: screenWidth / 150,
              color: Colors.black,
            ),
            SubjectsContainer(
              image: subjectTopImages2,
              topSubjectName: topSubjectName2,
              ratingNumber: ratingNumber2,
              title: "Competitive Exams",
            )
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(selectedItemColor: Colors.orange, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Courses"),
      ]),
    );
  }

  Widget carousalWidget(title, description, icondata, numRating) {
    return CarouselSlider.builder(
        itemCount: title.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            decoration: const BoxDecoration(
                color: Color(0xff343A43),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.07,
                    backgroundColor: Colors.white,
                    child: Icon(
                      icondata[index],
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  FittedBox(
                    child: Text(
                      "${title[index]}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.09),
                    ),
                  ),
                  FittedBox(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "${description[index]}",
                        softWrap: true,
                        maxLines: 4,
                        style: TextStyle(
                            overflow: TextOverflow.visible,
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.08),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.easeOutBack,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            autoPlayInterval: const Duration(seconds: 3)));
  }

  void showDialogBox() {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text("No Connection"),
              content: const Text("Please check your internet connectivity"),
              actions: [
                TextButton(
                    onPressed: () async {
                      Navigator.pop(context, "Cancel");
                      setState(() {
                        isAlertSet = false;
                      });
                      isDeviceConnected =
                          await InternetConnectionChecker().hasConnection;
                      if (!isDeviceConnected) {
                        showDialogBox();
                        setState(() {
                          isAlertSet = true;
                        });
                      }
                    },
                    child: Text("OK"))
              ],
            ));
  }
}

class sideDrawer extends StatelessWidget {
  const sideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "SONU CHAUHAN ",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange[200],
              backgroundImage: const AssetImage("assets/images/crop.jpg"),
            ),
            accountEmail: const Text(
              "CEO & Director",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("About US"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AboutUsPage();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text("Contact Us"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ContactUs();
              }));
            },
          ),
        ],
      ),
    );
  }
}
