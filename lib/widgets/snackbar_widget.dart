import 'package:flutter/material.dart';

class SnackBarWidget {
  static void snack(BuildContext context, String text){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            duration: const Duration(seconds: 2),
            content: Text(text)
        )
    );
  }

}