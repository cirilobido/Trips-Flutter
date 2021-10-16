
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trips/snackbar_widget.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navigate";

  ButtonPurple(this.buttonText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = InkWell(
      onTap: () {
        SnackBarWidget.snack(context, "Navigating");
        // ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(
        //       duration: const Duration(seconds: 2),
        //         content: Text("Navigating")
        //     )
        // );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
        ),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Lato",
              fontWeight: FontWeight.normal,
              color: Colors.white
            ),
          ),
        ),
      )
    );
    return button;
  }

}