import 'package:flutter/material.dart';
import 'package:trips/snackbar_widget.dart';

class FloatingActionButtonGreen extends StatefulWidget{

  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool _isFav = false;
  @override
  Widget build(BuildContext context) {
    final favButton = FloatingActionButton(
      backgroundColor: Color(0xFF0DC749),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        _isFav ? Icons.favorite: Icons.favorite_border ,
        color: Colors.white,
      ),
    );
    return favButton;
  }

  void onPressedFav() {
    SnackBarWidget.snack(context, "Saved as Favorite");
    setState(() {
      _isFav = _isFav ? false : true;
    });
  }
}