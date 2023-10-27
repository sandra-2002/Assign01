import 'package:assignment/TourismAppUI2/Screens/5home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Log2(),));
}

class Log2 extends StatefulWidget {
  const Log2({super.key});

  @override
  State<Log2> createState() => _Log2State();
}

class _Log2State extends State<Log2> {
  // final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
          body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
        children:[
                Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/4775/4775283.png'),),
                Text("LOGIN",style: GoogleFonts.albertSans(fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                  // validator: (uname){
                  //   if(uname!.isEmpty||!uname.contains('@')||!uname.contains('.com')){
                  //     return 'Invalid Username or Field must not be empty';
                  //   }else{
                  //     return null;
                  //   }
                  // },
                ),
                SizedBox(height: 20,),
                TextFormField(decoration: InputDecoration(
                  labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),),
          SizedBox(height: 20,),
          Container(
              height: 40,
              width: 500,
              child: ElevatedButton(onPressed:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Tour_Home1()));
              }, child:Text('Login'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                    textStyle: TextStyle(fontSize: 20) ),
          ))
              ]
            ),
          ),
    );
  }
}
