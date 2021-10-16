import 'package:flutter/material.dart';
import 'package:trips/stars.dart';

class Review extends StatelessWidget{

  late String? name, details, comment;
  String? pathImage;

  Review(this.name, this.details, this.comment, this.pathImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
          left: 10,
          right: 10
      ),
      child: Text(
        name!,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: Colors.black54
        ),
      ),
    );

    final userDetails = Container(
      margin: EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10
      ),
      child: Text(
        details!,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black38
        ),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10
      ),
      child: Text(
        comment!,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black87
        ),
      ),
    );

    final photo = Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage!)
        )
      ),
    );

    final dataContainer = Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 10
        ),
      child: Row (
          children: [
            photo,
            Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                userName,
                Row (
                  children: [
                    userDetails,
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5.0,
                          left: 3.0
                      ),
                      child: Stars(4.5),
                    )
                  ],
                ),
                userComment
              ],
            )
          ],
      )
    );

    return dataContainer;
  }

}