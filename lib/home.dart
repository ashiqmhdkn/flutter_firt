import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("video"),
              ),
              Container(
                child: Text("Graph"),
              ),
              Container(
                color: Color(0xFFD9D9D9),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.red,
                      )),
                      child: Text(
                        "High Risk High Reward Method",
                        style: TextStyle(color: Colors.red, fontSize: 21),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0,
                        right: 8.0),
                        child: Text(
                          "Medium Risk Reward Method",style: TextStyle(color: Colors.yellow, fontSize: 21),),
                      ),
                      decoration: BoxDecoration(
                           border: Border.all(color: Colors.yellow),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                           border: Border.all(color: Colors.green,)),
                      child: Text("Low Risk Small Reward method",style: TextStyle(color: Colors.green, fontSize: 21),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
