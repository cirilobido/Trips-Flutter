import 'package:flutter/material.dart';
import 'package:trips/card_image_profile.dart';
import 'package:trips/card_image_profile_list.dart';
import 'package:trips/gradient_background.dart';
import 'package:trips/profile_tabs.dart';
import 'package:trips/profile_user_data.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBackground("Profile", 370),
        Column(
          children: [
            ProfileUserData("Cirilo Bido", "emailprueba@test.ts", "assets/images/people.jpg"),
            ProfileTabs(),
          ],
        ),
        CardImageProfileList()
      ],
    );
  }

}