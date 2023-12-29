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
               Container(
                child:Padding(
                  padding: EdgeInsets.all(1),
                  child:Column(
                    children: [Container(
                      
                  ),Container(

                  ),Container(

                  )],
                  )
                )
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