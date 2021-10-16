
import 'package:flutter/cupertino.dart';
import 'package:trips/card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final list = Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/images/pc1.jpg"),
          CardImage("assets/images/pc2.jpg"),
          CardImage("assets/images/pc3.jpg"),
          CardImage("assets/images/pc4.jpg"),
          CardImage("assets/images/pc5.jpg"),
          CardImage("assets/images/pc6.jpg"),
          CardImage("assets/images/pc7.jpg"),
          CardImage("assets/images/pc8.jpg")
        ],
      ),
    );

    return list;
  }

}