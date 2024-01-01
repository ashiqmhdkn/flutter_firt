import 'package:flutter/material.dart';
import 'package:flutter_firt/Apar.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Login extends StatefulWidget {
  Login({Key? key});

  @override
  State<Login> createState() => _LoginState(
  );
}

class _LoginState extends State<Login> {
  Map<String, String> credentials = {'userName': '', 'password': ''};
  TextEditingController _userId = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 50,left: 50),
        child: Column(
          children: [
            Text("LOGIN",textScaler: TextScaler.linear(7),),
            TextField(
              decoration: InputDecoration(labelText: "User Name",border: OutlineInputBorder(),hoverColor: Colors.blue),
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
                child:Padding( padding:EdgeInsets.all(5),child:Text("SUBMIT"), ),
                onPressed: ()async{
                  SharedPreferences sp =await SharedPreferences.getInstance();
                 if(_userId.text=="ashiq"&&_password.text=="123"){ 
                  sp.setString("Id",_userId.text.toString() );
                  sp.setString("Pass", _password.text.toString());
                  sp.setBool('log', true);
                  islogin();
                 }}
              ),
            ),
          ],
        ),
      ),
    );
  }
  islogin ()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    if(sp.getBool('log')==true)
    Navigator.of(context).push(
      MaterialPageRoute(builder:(context)=>Apar())
    );
  }
}
