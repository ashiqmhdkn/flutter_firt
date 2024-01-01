import 'package:flutter/material.dart';
import 'package:flutter_firt/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("Profile Updates"),
        Padding(
          padding: EdgeInsets.only(left: 17),
          child: Column(children: [
            Row(
              children: [
                Icon(Icons.person),
                Text("Name"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone),
                Text("Phone"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.family_restroom),
                Text("Family Details"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.camera_front),
                Text("Edit Profile"),
              ],
            ),
          ]),
        ),
        Row(
          children: [
            Icon(Icons.notifications),
            Text("Notification"),
          ],
        ),
        Row(
          children: [
            Icon(Icons.share),
            Text("Share with friends"),
          ],
        ),
        Row(
          children: [
            Icon(Icons.comment),
            Text("Feedback"),
          ],
        ),
        Row(
          children: [
            Icon(Icons.feed),
            Text("Privacy Policy"),
          ],
        ),
        Row(
          children: [
            Icon(Icons.error),
            Text("About"),
          ],
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          onTap: () {
            showDialog(
              context:context,
               builder:(cntx) =>AlertDialog(
                title: Text("Logout"),
                content: Text("Do you want to Logout ?"),
               actions: [ElevatedButton(onPressed:  () async{
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setBool('log', false);
                  sp.setString("Id", "");
                  sp.setString("Pass", '');
                  Navigator.pop(cntx);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: Text("LOGOUT"),),
                ElevatedButton(onPressed:  () {
                  Navigator.pop( cntx);
                }, child: Text("Cancel"))],
              ),
            );
          },
        ),
      ],
    ));
  }
}
