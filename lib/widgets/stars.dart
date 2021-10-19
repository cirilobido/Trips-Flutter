import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  double starCount = 0;

  Stars(this.starCount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final starBorder = Container(
      child: const Icon(
        Icons.star_border_outlined,
        color: Color(0xFFf2c616),
      ),
    );

    final starHalf = Container(
      child: const Icon(
        Icons.star_half_outlined,
        color: Color(0xFFf2c616),
      ),
    );

    final star = Container(
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c616),
      ),
    );

    return Row(
      children: [
        star,
        star,
        star,
        star,
        starHalf
      ],
    );
  }
}