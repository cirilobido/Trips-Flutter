

import 'package:flutter/material.dart';

import 'card_image_profile.dart';

class CardImageProfileList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final list = Container(
      margin: EdgeInsets.only(
        top: 270
      ),
      child: ListView(
        children: [
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc1.jpg"),
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc2.jpg"),
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc3.jpg"),
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc4.jpg"),
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc5.jpg"),
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc6.jpg"),
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc7.jpg"),
          CardImageProfile("Knuckles Mountains Range", "Nadar, Correr, Divertirse", 1800,"assets/images/pc8.jpg")

        ],
      ),
    );

    return list;
  }

}