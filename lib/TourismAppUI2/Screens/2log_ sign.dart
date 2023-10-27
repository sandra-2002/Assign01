import 'package:assignment/TourismAppUI2/Screens/3login.dart';
import 'package:assignment/TourismAppUI2/Screens/4sign.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:Log_Sign()));
}
class Log_Sign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset('asset/icons/168104-travel-icon-free-download-png-hq.png',
        width: 300,height: 300,),
    SizedBox(
    height: 20,
    ),
    MaterialButton(onPressed: (){
      Navigator.push((context), MaterialPageRoute(builder: (context)=>Log2()));
    },
    color: Colors.blue,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
    ),
    child: ListTile(
    title: Text('Login Here'),
    trailing: Icon(Icons.people_alt_outlined),
    ),
    ),
          SizedBox(
            height: 15,
          ),
    MaterialButton(onPressed: (){
        Navigator.push((context), MaterialPageRoute(builder: (context)=>Sign()));
    },
    color: Colors.green,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
    ),
    child: ListTile(
    title: Text('Register Here'),
    trailing: Icon(Icons.person_add_alt_1_outlined),
    ),
    ),
          SizedBox(
            height: 15,
          ),
    MaterialButton(onPressed: (){},
    color: Colors.indigoAccent,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
    ),
    child: ListTile(
    title: Text('Continue with FaceBook'),
      trailing: Icon(Icons.facebook),
    ),
    ),
          SizedBox(
            height: 15,
          ),
          MaterialButton(onPressed: (){},
            color: Colors.blueGrey[400],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            child: ListTile(
                title: Text('Continue with Google'),
                trailing:Icon(Icons.facebook)),
          ),
        ],
        ),),

    );
  }
}
