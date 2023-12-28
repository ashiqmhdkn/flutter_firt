import 'package:flutter/material.dart';
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
        primaryColor: Color(0xFF26C6DA),
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
      body: Container(
        // Your content goes here
        child:Login(),
        // Home(),
      ),
    );
  }
}
