import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget{
  String title = "Popular";
  double size = 250;

  GradientBackground(this.title, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradient = Container(
      height: size,
      decoration: const BoxDecoration (
        gradient: LinearGradient(
          colors: [
            Color(0xFF496cd4),
            Color(0xFF584bd1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
      alignment: const Alignment(-0.9, -0.6),
    );
    return gradient;
  }
}