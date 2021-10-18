
import 'package:flutter/material.dart';

class ProfileUserData extends StatelessWidget{
  String userName, userEmail, userAvatar;
  ProfileUserData(this.userName, this.userEmail, this.userAvatar);
  @override
  Widget build(BuildContext context) {
    final name = Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10
      ),
      child: Text(
        userName,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontFamily: "Lato",
          color: Colors.white
        ),
      ),
    );
    final email = Container(
      margin: EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10
      ),
      child: Text(
        userEmail,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "Lato",
            color: Colors.white38
        ),
      ),
    );

    final photo = Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.only(
        left: 10,
        right: 10
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(userAvatar)
        )
      ),
    );

    return Container(
      height: 110,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(
        top: 100
      ),
      child: Row(
        children: [
          photo,
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                name,
                email
              ],
            ),
          )
        ],
      ),
    );

  }

}