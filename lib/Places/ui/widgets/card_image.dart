
import 'package:flutter/material.dart';
import 'package:trips/widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String imagePath;

  CardImage(this.imagePath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      width: 250,
      height: 350,
      margin: EdgeInsets.only(
        top: 80,
        left: 20
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.15),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
  
}