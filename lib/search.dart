import 'package:flutter/material.dart';
import 'package:flutter_firt/preview.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Preview()),);
                    },
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://d28wu8o6itv89t.cloudfront.net/images/tatalogojpg-1539002159193.jpeg"),
                    ),
                    title: Text("muthal fund Name\stock"),
                    trailing: Text("Nav\stock price"),
                  ),
                  Divider(),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Avg"),
                      Text("P/Eratio"),
                      Text("change"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
