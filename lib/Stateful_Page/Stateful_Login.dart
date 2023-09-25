import 'package:flutter/material.dart';
import 'Home.dart';

class Login_Stateful extends StatefulWidget {
  @override
  State<Login_Stateful> createState() => _Login_StatefulState();
}

class _Login_StatefulState extends State<Login_Stateful> {
  String username="admin@gmail.com";
  String password="abc123";

  final key1=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key:key1,
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Username",
              labelText:"username",
            prefixIcon: Icon(Icons.people_rounded)
          ),
          validator: (uname){
            if(uname!.isEmpty || !uname!.contains('@') || !uname.contains('.com')){
              return 'username must not be empty or invalid';
            }
          },

        ),
    ),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: "Password",
      labelText:"Enter your Password",

    ),
    validator: (password){
    if(password!.isEmpty || password.length<6){
    return "password must not be empty/password length must be > 6";

    }else{
    return null;
    }
    }
    ),
    ),
    ElevatedButton(onPressed: (){
      final valid=key1.currentState!.validate();
      if(valid){
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Home()));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content:Text('Invalid Data'))
        );
      }
      }, child: Text("Login"))
    ],
    ),
      ),
    );
  }
}

