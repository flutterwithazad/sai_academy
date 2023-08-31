import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
              )),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_sharp,
              )),
        ],
        backgroundColor: Colors.blue,
        title: Text(
          'Contact Us',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.04,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: screenHeight * 0.35,
                  width: double.infinity,
                  child: Lottie.network(
                      "https://lottie.host/29bf845e-040a-4e1c-8b9d-37376a2e4b6a/Y0mD6KA4Yv.json"),
                ),
                SizedBox(
                    height: screenHeight * 0.5,
                    width: screenWidth * 0.9,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.1,
                          child: Card(
                            child: ListTile(
                              title: Text(
                                "Mobile Number",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: screenHeight * 0.03),
                              ),
                              subtitle: Text(
                                "+91 9999459871",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: screenHeight * 0.02),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                          child: Card(
                            child: ListTile(
                              title: Text(
                                "Address",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: screenHeight * 0.03),
                              ),
                              subtitle: Text("A-84, 1st Floor, Devli Ext. Tigri T-Point, New Delhi - 80",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: screenHeight * 0.02)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                          child: Card(
                            child: ListTile(
                              title: Text(
                                "E-Mail address",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: screenHeight * 0.03),
                              ),
                              subtitle: Text("sonu11chauhansp@gmail.com",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: screenHeight * 0.02)),
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
