import 'package:flutter/material.dart';

class icon extends StatelessWidget {
  const icon({super.key,required this.rate});

  final double rate;

  @override
  Widget build(BuildContext context) {


    double screenHeight = MediaQuery.of(context).size.height;
    return Icon(
      Icons.star_rate_rounded,
      color: Colors.orange,
      size: screenHeight *rate,
    );
  }
}
