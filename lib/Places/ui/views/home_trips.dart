
import 'package:flutter/material.dart';
import 'package:trips/Places/ui/widgets/review_list.dart';

import 'description_place.dart';
import '../../../User/ui/views/header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the "
      "1500s, when an unknown printer took a galley of type and scrambled it "
      "to make a type specimen book. It has survived not only five centuries, "
      "but also the leap into electronic typesetting, remaining essentially ";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Punta Cana", descriptionDummy, 4.3),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }

}