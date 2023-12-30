import 'package:flutter/material.dart';

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
        Row(
          children: [
            Icon(Icons.logout),
            Text("Logout"),
          ],
        ),
      ],
    ));
  }
}
