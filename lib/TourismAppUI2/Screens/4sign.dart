import 'package:assignment/TourismAppUI2/Screens/3login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Sign(),));
}

class Sign extends StatefulWidget {
  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final formkey=GlobalKey<FormState>();
  String? pass;
  bool hidpass=true;
  bool hiddpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SignUp',style:GoogleFonts.albertSans(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Name',
                labelText:'Name',
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
            const SizedBox(height:18,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                labelText: 'Phone Number',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
            ),
            const SizedBox(height: 18,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'UserName',
                labelText: 'UserName',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
              validator:(uname){
                if(!uname!.isEmpty||!uname.contains('@')||!uname.contains('.com')){
                  return 'Invalid Username or Field must not be empty';
                }else{
                  return null;
                }
              }
            ),
            const SizedBox(height: 18,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your Password',
                labelText: 'Password',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
              validator: (pswd){
                pass=pswd;
                if(!pswd!.isEmpty||pswd.length<6){
                  return 'Password must contain atleast 6 characters or Field must not be empty';
                }else{
                  return null;
                }
              },
            ),
            const SizedBox(height: 18,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Re-Enter your Password',
                labelText: 'Confirm Password',
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
              validator:(cpswd){
                if(cpswd!.isEmpty||cpswd!=pass){
                  return 'Incorrect password';
                }else{
                  return null;
                }
              },
            ),
            const SizedBox(height: 20,),
            Container(
                height: 40,
                width: 200,
                child: ElevatedButton(onPressed: (){
                  final valid = formkey.currentState!.validate();
                  if (formkey.currentState!.validate()) {
                    if (valid) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>const Log2()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Inavlid datas')));
                    }
                  }
                },
                  child: const Text('SignUp'),
                  style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),)),))
          ],
        ),
      ),
    );
  }
}
