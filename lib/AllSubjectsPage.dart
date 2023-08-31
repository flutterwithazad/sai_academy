import 'package:flutter/material.dart';

class AllSubjectsPage extends StatelessWidget {
  const AllSubjectsPage({
    super.key,
    required this.image1,
    required this.title1,
    required this.rating1,

  });

  final List<dynamic> image1;
  final List<dynamic> title1;
  final List<dynamic> rating1;


  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
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
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: title1.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: double.infinity,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(3.8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(image1[index]),
                                          fit: BoxFit.fill)),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Column(
                                  children: [
                                    FittedBox(
                                        child: Text(
                                      title1[index],
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.047,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    FittedBox(
                                        child: Text(
                                      title1[index],
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.047,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ],
                                )
                              ],
                            ),
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
