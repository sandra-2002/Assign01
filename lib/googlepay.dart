import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home:SplashPage(),));
}
class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body:
      Container(
        child: Center(
          child:
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Image(image: NetworkImage("https://static1.xdaimages.com/wordpress/wp-content/uploads/2020/12/Google-Pay-dark-theme-featured.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5"),
                height:400,
                width:400,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("Google",

                    style:GoogleFonts.josefinSans(
                      fontSize: 50,
                      color:Colors.white,
                      // fontWeight:FontWeight.bold
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}