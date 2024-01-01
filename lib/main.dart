import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_firt/Apar.dart';
import 'package:flutter_firt/flash.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: Scaffold(
        body: SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      isLogin(context);
    return Scaffold(
        body: flash(),
    );
  }
}
void isLogin(BuildContext context)async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool? isLogin= sp.getBool('log') ?? false;

    if(isLogin){
      Timer(const Duration(seconds: 1), () {
      Navigator.of(context).push(
           MaterialPageRoute(builder: (context) =>  Apar()));
    });

    }else{
      Timer(const Duration(seconds: 1), () {
      Navigator.of(context).push(
           MaterialPageRoute(builder: (context) =>  flash()));
    });

    }
  }