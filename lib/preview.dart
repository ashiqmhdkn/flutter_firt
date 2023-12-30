import 'dart:math';

import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  const Preview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("Tata cap"),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://d28wu8o6itv89t.cloudfront.net/images/tatalogojpg-1539002159193.jpeg"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("No.Of.Year"),
            Text("15"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nav"),
            Text("275"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Overlapping"),
            Text("15"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("price"),
            Text("15"),
          ],
        ),
      ]),
    );
  }
}
