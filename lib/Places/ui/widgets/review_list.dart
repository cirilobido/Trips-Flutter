import 'package:flutter/material.dart';
import 'package:trips/Places/ui/widgets/review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final allReviewsText = Container(
      margin: const EdgeInsets.only(
          top: 20,
          left: 20
      ),
      child: const Text(
        "All Reviews",
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black45
        ),
      ),
    );

    final dataContainer = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        allReviewsText,
        Review("Carlos Montes", "1 reviews - 4 photos", "Excellent Place to stay with your family", "assets/images/people.jpg"),
        Review("Sung Tan", "5 reviews - 14 photos", "The best way to lose time", "assets/images/sung-tan.jpg"),
        Review("Lupe Ortensia", "3 reviews - 7 photos", "Gente amable y carismatica", "assets/images/lupe.jpg"),
      ],
    );

    return dataContainer;
  }

}