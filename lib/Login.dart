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
          Padding(
            padding: EdgeInsets.only(right: 50,left: 50),
            child: Column(
              children: [
                Text("LOGIN",textScaler: TextScaler.linear(7),),
                TextField(
                  decoration: InputDecoration(labelText: "User Name",border: OutlineInputBorder()),
                  controller: _userId,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder()),
                    obscureText: true,
                    controller: _password,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        credentials = {
                          'userName': _userId.text,
                          'password': _password.text,
                        };
                      });
                      print('Credentials: $credentials');
                    },
                    child:Padding( padding:EdgeInsets.all(5),child:Text("SUBMIT"),),
                  ),
                ),
                SizedBox(height: 16.0),
                Text("Display User Name: ${credentials['userName']}"),
                Text("Display Password: ${credentials['password']}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
