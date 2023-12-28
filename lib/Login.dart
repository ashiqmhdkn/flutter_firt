import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Map<String, String> credentials = {'userName': '', 'password': ''};
  TextEditingController _userId = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("LOGIN"),
          Text("USER NAME"),
          TextField(
            decoration: InputDecoration(labelText: "User Name"),
            controller: _userId,
          ),
          Text("Password"),
          TextField(
            decoration: InputDecoration(labelText: "Password"),
            obscureText: true,
            controller: _password,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Update the values when the button is pressed
                credentials = {
                  'userName': _userId.text,
                  'password': _password.text,
                };
              });
              print('Credentials: $credentials');
            },
            child: Text("SUBMIT"),
          ),
          SizedBox(height: 16.0),
          Text("Display User Name: ${credentials['userName']}"),
          Text("Display Password: ${credentials['password']}"),
        ],
      ),
    );
  }
}
