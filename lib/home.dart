import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text("video"),
                          color: Color(0xffa1a1),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text("Graph"),
                          color: Color(0xa1ffa155),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            child: Column(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red, border: Border.all()),
                              child: Text("High Risk High Reward Method"),
                            )),
                            Expanded(
                                child: Container(
                              child: Text("Medium Risk Reward Method"),
                              decoration: BoxDecoration(
                                  color: Colors.yellow, border: Border.all()),
                            )),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green, border: Border.all()),
                              child: Text("Low Risk Small Reward method"),
                            )),
                          ],
                        )),
                      )
                    ],
                  ),),
            ],
          ),
        ),
      ),
    );
  }
}
