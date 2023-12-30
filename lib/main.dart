import 'package:flutter/material.dart';
import 'package:flutter_firt/Apar.dart';
import 'package:flutter_firt/search.dart';
import './home.dart';
import './Login.dart';
main(List<String> args) {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Your content goes here
        child:Apar(),
        //Login(),
        //Home(),
       // Search(),
      ),
    );
  }
}
