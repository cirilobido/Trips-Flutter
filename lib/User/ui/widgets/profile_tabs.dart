import 'package:flutter/material.dart';

class ProfileTabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final bookmark = Container(
      width: 35,
      height: 35,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        mini: true,
        tooltip: "Bookmak",
        onPressed: () {},
        child: Icon(
          Icons.bookmark_border ,
          color: Color(0xFF4e58d2),
          size: 20,
        ),
      )
    );

    final calendar = Container(
      width: 35,
      height: 35,
      child: FloatingActionButton(
        backgroundColor: Colors.white54,
        tooltip: "Calenda",
        mini: true,
        onPressed: () {},
        child: Icon(
          Icons.calendar_today,
          color: Color(0xFF4e58d2),
          size: 20,
        ),
      )
    );

    final add = Container(
      width: 50,
      height: 50,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        tooltip: "Add",
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color(0xFF4e58d2),
          size: 45,
        ),
      )
    );

    final messages = Container(
      width: 35,
      height: 35,
      child: FloatingActionButton(
        backgroundColor: Colors.white54,
        tooltip: "Messages",
        mini: true,
        onPressed: () {},
        child: Icon(
          Icons.email_outlined ,
          color: Color(0xFF4e58d2),
          size: 20,
        ),
      )
    );

    final profile = Container(
      width: 35,
      height: 35,
      child: FloatingActionButton(
        backgroundColor: Colors.white54,
        tooltip: "Profile",
        mini: true,
        onPressed: () {},
        child: Icon(
          Icons.person ,
          color: Color(0xFF4e58d2),
          size: 20,
        ),
      )
    );

    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bookmark,
          calendar,
          add,
          messages,
          profile
        ],
      ),
    );
  }

}