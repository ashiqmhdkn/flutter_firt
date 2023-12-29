import 'package:flutter/material.dart';

class Apar extends StatelessWidget {
  Apar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(   toolbarHeight: 80,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                IconButton( 
                  hoverColor: Colors.blue,
                  
                  icon: Icon(Icons.home),
                  onPressed: () {
                    print('home button pressed');
                  },
                ),
               IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('Search button pressed');
                },
              ),
           IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print('Settings button pressed');
                },
              ),
          ],
        ),
      ],
    );
  }
}
