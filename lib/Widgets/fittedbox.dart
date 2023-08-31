import 'package:flutter/material.dart';

class fittedbox extends StatelessWidget {
 final  String text;
  final double size;
   final  Color color;

  const fittedbox({super.key, required this.text,required this.size,required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  MediaQuery.of(context).size.height * size ,
      width:  MediaQuery.of(context).size.width * 0.4,
      child: FittedBox(
        child: Text(
          text,
          softWrap: true,
          maxLines: 2,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * size,
              color: color),
        ),
      ),
    );
  }
}
