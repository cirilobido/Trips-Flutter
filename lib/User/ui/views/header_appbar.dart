
import 'package:flutter/cupertino.dart';
import 'package:trips/Place/ui/widgets/card_image_list.dart';
import 'package:trips/widgets/gradient_background.dart';

class HeaderAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final header = Stack(
      children: [
        GradientBackground("Welcome", 250),
        CardImageList()
      ],
    );
    return header;
  }

}