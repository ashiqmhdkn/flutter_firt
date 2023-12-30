import 'package:flutter/material.dart';

class Goal extends StatelessWidget {
  const Goal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        decoration:
         BoxDecoration(
          color: const Color(0xff0167ff),
          border: Border.all(),
          borderRadius: BorderRadius.all(
            Radius.circular(11),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("SIP Calculator"),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Expecpted return  rate"),
                      Text("13%")
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Monthly Investment"),
                      Text("5000")
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Time Priod"),
                      Text("30years")
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount"),
                      Text("1296775"),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                      ElevatedButton(onPressed: () {}, child: Text("Mid Goal")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration:
         BoxDecoration(
          color: Color.fromARGB(26, 1, 31, 255),
          border: Border.all(),
          borderRadius: BorderRadius.all(
            Radius.circular(11),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:17.0,
              right: 17.0),
              child: Column(
                children: [
                  Text("Lamsump Calculator"),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Expecpted return  rate"),
                      Text("13%")
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Investment"),
                      Text("50000")
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Time Priod"),
                      Text("30years")
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount"),
                      Text("1296775"),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                      ElevatedButton(onPressed: () {}, child: Text("Mid Goal")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(color:  Color(0xff7c94b6),
        child: ListTile(title: Text("Long Time Goal"),trailing: IconButton(icon:Icon(Icons.arrow_drop_down),onPressed: () {
          
        },),),
      ),Container(color:  Color(0xfaac94b6),
        child: ListTile(title: Text("Short Time Goal"),trailing: IconButton(icon:Icon(Icons.arrow_drop_down),onPressed: () {
          
        },),),
      ),
    ]));
  }
}
