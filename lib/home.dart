import 'package:flutter/material.dart';
import 'Apar.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF455A64),
        child: SafeArea(
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Center(
                  child: Text(
                    "Arif",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              
              Container(width: 555,
              height: 87,
                child: Apar()),
            ],
          ),
        ),
      ),
    );
  }
}



void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
