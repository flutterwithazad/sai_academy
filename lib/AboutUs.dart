import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
        backgroundColor: Colors.orange,
        title: Text(
          'About Us',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.04,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fittedWidget(
              screenWidth: screenWidth,
              txt: 'Welcome to Sai Academy',
            ),
            const SizedBox(height: 10),
            txtWidget(
              screenWidth: screenWidth,
              txt:
                  'Welcome to Sai Academy Institute App – Your Pathway to Knowledge and Excellence!',
            ),
            buildDivider(),
            fittedWidget(screenWidth: screenWidth, txt: "**Our Vision**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    "At Sai Academy, we envision a world where education transcends traditional boundaries, empowering individuals to achieve their full potential and contribute meaningfully to society."),
            buildDivider(),
            fittedWidget(screenWidth: screenWidth, txt: "**Who We Are**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    "Sai Academy is not just an institution; we are a beacon of learning, a hub of innovation, and a community that nurtures intellectual growth. With a legacy of excellence, we have been dedicated to shaping minds, fostering skills, and inspiring futures."),
            buildDivider(),
            fittedWidget(screenWidth: screenWidth, txt: "**Our Commitment**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    "Our commitment lies in providing accessible, high-quality education that caters to learners of all ages and backgrounds. Through our Institute App, we are taking this commitment a step further, ensuring that learning is convenient, engaging, and personalized."),
            buildDivider(),
            fittedWidget(screenWidth: screenWidth, txt: "**What We Offer**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    """1. **Comprehensive Course Range**: Dive into a world of knowledge with our extensive course offerings. From academic subjects to professional skills, our diverse range of courses is designed to meet the aspirations of every learner.

 2. **Renowned Faculty**: Our courses are curated and taught by experienced educators, industry experts, and thought leaders. Benefit from their wealth of knowledge and practical insights.

3. **Seamless Learning Experience**: Access your courses anytime, anywhere through our user-friendly app. Learn at your pace, track your progress, and interact with fellow learners through integrated discussion boards.

4. **Certification**: Earn certificates upon course completion, validating your achievements and enhancing your profile. Whether you're advancing in your career or pursuing personal growth, our certificates stand as a testament to your dedication."""),
            buildDivider(),
            fittedWidget(screenWidth: screenWidth, txt: "**Our Philosophy**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    "At Sai Academy, education is a lifelong journey. We believe in nurturing curiosity, igniting minds, and promoting holistic development. Our Institute App embodies this philosophy, bridging the gap between aspiration and achievement."),
            buildDivider(),
            fittedWidget(
                screenWidth: screenWidth, txt: "**Join Our Community**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    "Become a part of the Sai Academy family and join a community that thrives on collaboration and mutual growth. Connect with like-minded individuals, engage in enriching discussions, and embark on a journey of continuous improvement."),
            buildDivider(),
            fittedWidget(screenWidth: screenWidth, txt: "**Contact Us**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    "Have questions or need assistance? Feel free to reach out to us at +91 9999459871. Our dedicated support team is here to guide you every step of the way."),
            buildDivider(),
            fittedWidget(screenWidth: screenWidth, txt: "**Stay Connected**"),
            buildSizedBox(),
            txtWidget(
                screenWidth: screenWidth,
                txt:
                    '''Stay updated on our latest courses, events, and news by following us on social media and subscribing to our newsletter. The journey to excellence begins with a single step, and we're here to walk it with you.

              Discover the limitless possibilities of education with Sai Academy Institute App – Empowering Minds, Enriching Futures!''')
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox() => const SizedBox(
        height: 10,
      );

  Divider buildDivider() => Divider(
        color: Colors.grey[300],
      );
}

class txtWidget extends StatelessWidget {
  const txtWidget({
    super.key,
    required this.screenWidth,
    required this.txt,
  });

  final double screenWidth;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(fontSize: screenWidth * 0.05),
      softWrap: true,
      // maxLines: 100,
      overflow: TextOverflow.visible, //new
    );
  }
}

class fittedWidget extends StatelessWidget {
  const fittedWidget({
    super.key,
    required this.screenWidth,
    required this.txt,
  });

  final double screenWidth;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: screenWidth * 0.08,
      child: FittedBox(
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.blue,
            fontSize: screenWidth * 0.06,
            fontWeight: FontWeight.w600,
          ),
          softWrap: true,
          overflow: TextOverflow.visible,
          maxLines: 100,
        ),
      ),
    );
  }
}
