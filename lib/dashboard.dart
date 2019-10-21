import 'dart:async';

import 'package:animated_bottom_nav/bottom_bar_navigation.dart';
import 'package:animated_bottom_nav/utils/color.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  Dashboard({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  List<BottomNavigationItem> navItems = [
    BottomNavigationItem(
      icon: Icon(Icons.home),
      title: Text('Home'),
      activeColor: blue,
      inactiveColor: Colors.white,
    ),
//            BottomNavigationItem(
//                icon: Icon(Icons.add_box),
//                title: Text('Add Asset'),
//                activeColor: Utils.hexToColor("#3D4094"),
//                inactiveColor: Utils.hexToColor("#BEBEBE")),
    BottomNavigationItem(
      icon: Icon(Icons.message),
      title: Text('Messages'),
      activeColor: blue,
      inactiveColor: Colors.white,
    ),

    BottomNavigationItem(
      icon: Icon(Icons.history),
      title: Text('History'),
      activeColor: blue,
      inactiveColor: Colors.white,
    ),
    BottomNavigationItem(
      icon: Icon(Icons.person),
      title: Text('Profile'),
      activeColor:blue,
      inactiveColor: Colors.white,
    ),
  ];
  List<Widget> _children = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  _DashboardState();
  // Fetch the available cameras before initializing the app.
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _children[currentIndex],
        // This trailing comma makes auto-formatting nicer for build methods.
        bottomNavigationBar: BottomBarNavigation(
          currentIndex: currentIndex,
          backgroundColor: blue,
          onItemSelected: (index) => setState(() {
            currentIndex = index;
          }),
          items: navItems,
        ),
      ),
    );
  }
}
