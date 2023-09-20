import 'package:flutter/material.dart';
import 'Stateful_Login.dart';

class Reg_Stateful extends StatefulWidget {
 // const ({super.key});
  @override
  State<Reg_Stateful> createState() => _Reg_StatefulState();
}

class _Reg_StatefulState extends State<Reg_Stateful> {
  final formkey=GlobalKey<FormState>();
  String? pass;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Form(
        key:formkey,
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration:InputDecoration(
                    hintText: "First and Last name",
                    labelText: "Name",
                    prefixIcon:Icon(Icons.account_circle_sharp),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration:InputDecoration(
                    hintText:"Phone Number",
                    labelText:"Phone Number",
                    prefixIcon:Icon(Icons.phone),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15),
                    )
                ),
                validator: (num){
                  if(!num!.isEmpty||num.length==10){
                    return "Field must contain 10 digits and should not be empty";
                  }else{
                    return null;
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration:InputDecoration(
                    hintText:"UserName",
                    labelText:"UserName",
                    prefixIcon:Icon(Icons.people_rounded),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15),
                    )
                ),
                validator:(uname){
                  if(!uname!.isEmpty||uname.contains('@')||uname.contains('.com')){
                    return "Invalid username";
                  }else{
                    return null;
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration:InputDecoration(
                    hintText:"Enter your Password",
                    labelText:"Password",
                    helperText:"Password must contain atleast 8 characters. Characters must include Alphabets,Numbers and Special characters",
                    prefixIcon: Icon(Icons.lock_outlined),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15),
                    )
                ),
                validator: (pswd){
                  if(!pswd!.isEmpty||pswd.length<6){
                    return "There must be 6 characters and field must not be Empty";
                    }else{
                    return null;
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration:InputDecoration(
                    hintText:"Confirm Password",
                    labelText:"Confirm Password",
                    prefixIcon: Icon(Icons.lock_outlined),
                    border:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(15)
                    )
                ),
                validator: (cpswd){
                  if(!cpswd!.isEmpty||cpswd==pass){
                    return "Wrong password or password must be same";
                  }else{
                    return null;
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: (){
              final valid=formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Login_Stateful()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content:Text('Invalid Data'))
                );
              }
              }, child: Text('Register')),
            )
          ]
        ),
      )
    );
  }
}
