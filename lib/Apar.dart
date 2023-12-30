import 'package:flutter/material.dart';
import 'package:flutter_firt/Profile.dart';
import 'package:flutter_firt/Settings.dart';
import 'package:flutter_firt/goals.dart';
import 'package:flutter_firt/home.dart';
import 'package:flutter_firt/search.dart';

class Apar extends StatefulWidget {
  Apar({Key? key}) : super(key: key);

  @override
  State<Apar> createState() => _AparState();
}
int currentPageIndex=0;
class _AparState extends State<Apar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:NavigationBar(
       destinations:[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          NavigationDestination(
            label: "goal",
            icon: Icon(Icons.flag_circle),
          ),
          NavigationDestination(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState((){
            currentPageIndex=index;
          });
        },
        labelBehavior:NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
      body: [Home(),Search(),Goal(),Profile(),Settings(),][currentPageIndex],
    );
  }
}
