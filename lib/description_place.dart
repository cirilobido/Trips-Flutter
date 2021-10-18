import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trips/button_purple.dart';
import 'package:trips/review_list.dart';
import 'package:trips/stars.dart';

class DescriptionPlace extends StatelessWidget{
  late String namePlace, descriptionPlace;
  late double stars;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Lato",
          color: Colors.black54
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title =
        Container(
          margin: const EdgeInsets.only(
            top: 340.0,
            left: 20.0,
            right: 20.0,
            bottom: 20.0
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato"
            ),
            textAlign: TextAlign.left,
          ),
        );

    final dataContainer = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            title,
            Container(
              margin: const EdgeInsets.only(
                  top: 325.0,
              ),
              child: Stars(4.5),
            )
          ],
        ),
        description,
        ButtonPurple("Navigate")
      ],
    );

    return dataContainer;
  }
  
}