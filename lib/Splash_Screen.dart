import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sai_academy/HomePage.dart';
import 'package:sai_academy/Widgets/fittedbox.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            //mainAxisSize: MainAxisSize.max
            children: [
              SizedBox(
                child: Image.asset("assets/images/CipherImage.png"),
              ),
              fittedbox(text: "Sai Academy", size: 0.09, color: Colors.orange),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
