import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Places/ui/views/home_trips.dart';
import 'Places/ui/views/search_trips.dart';
import 'User/ui/views/profile_trips.dart';

class NavigationCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Color(0xFF4e58d2)),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Color(0xFF4e58d2)),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Color(0xFF4e58d2)),
                  label: ""
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
              default:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
                break;

          }

        },
      ),
    );
  }

}