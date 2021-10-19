
import 'package:flutter/material.dart';
import 'package:trips/widgets/floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {
  String title, desc, imagePath;
  double steps;

  CardImageProfile(this.title, this.desc, this.steps, this.imagePath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final cardImage = Container(
      height: 230,
      margin: EdgeInsets.only(
        left: 20,
        right: 20
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

    final placeTile = Container(
      margin: EdgeInsets.only(
        bottom: 5
      ),
      child: Text (
        title,
        style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      )
    );

    final placeDesc = Container(
        margin: EdgeInsets.only(
            bottom: 5
        ),
        child: Text (
          desc,
          style: TextStyle(
              fontSize: 12,
              fontFamily: "Lato",
              fontWeight: FontWeight.normal,
              color: Colors.black54
          ),
        )
    );

    final placeSteps = Container(
        margin: EdgeInsets.only(
            bottom: 5
        ),
        child: Text (
          "Steps $steps",
          style: TextStyle(
              fontSize: 14,
              fontFamily: "Lato",
              fontWeight: FontWeight.normal,
              color: Colors.orange
          ),
        )
    );

    final cardText = Container(
      margin: EdgeInsets.only(
          top: 30,
          left: 60,
          right: 60,
          bottom: 40
      ),
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 20
      ),
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              placeTile,
              placeDesc,
              placeSteps
            ],
          )
        ],
      ),
    );


    return Stack(
      children: [
        cardImage,
        Container(
          margin: EdgeInsets.only(
            top: 140
          ),
          child: Stack(
            alignment: Alignment(0.5, 0.6),
            children: [
              cardText,
              Container(
                width: 30,
                height: 30,
                child:
                FloatingActionButtonGreen(),
              )
            ],
          ),
        )
      ],
    );
  }
  
}