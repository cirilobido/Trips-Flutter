
import 'package:flutter/material.dart';
import 'package:trips/home_trips.dart';
import 'package:trips/profile_trips.dart';
import 'package:trips/search_trips.dart';

class NavigationTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NavigationTrips();
  }

}

class _NavigationTrips extends State<NavigationTrips>{
  int navIndex = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  @override
  Widget build(BuildContext context) {
    final nav = Scaffold(
      body: widgetsChildren[navIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Color(0xFF4e58d2),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: onTapTapped,
            currentIndex: navIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ""
              ),
            ],
            selectedItemColor: Color(0xFF4e58d2),
          )
      ),
    );
    return nav;
  }

  void onTapTapped(int index){
    setState(() {
      navIndex = index;
    });
  }
}