

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home:SplashPage()));
}
class SplashPage extends StatelessWidget {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
        decoration: BoxDecoration(
            color:Colors.black
        ),
       // child: Center(
          child:Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
               // Icon(Icons.adb_outlined,size: 100,color: Colors.black,),
               Image(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSceltYoH6OfGWOlpsXo4RjJ7za5GQ-Oh9LQ&usqp=CAU"),
                width:80,
                   height:80

                ),
               Column(
                 children: [
                   Text("from",
                      style: GoogleFonts.catamaran
                        (fontSize:15,
                      color:Colors.grey
                    )
                   ),
                 ],
               ),
                Text("Rahul",
                  style: GoogleFonts.josefinSans
                    (fontSize:20,
                      color:Colors.white)

            ),
            ],
        ),
      ),
      ),
    );
  }
}

