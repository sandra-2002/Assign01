import 'dart:async';
import 'package:assignment/TourismAppUI2/Screens/2log_%20sign.dart';
import 'package:assignment/TourismAppUI2/Screens/3login.dart';
import 'package:assignment/TourismAppUI2/Screens/4sign.dart';
import 'package:assignment/TourismAppUI2/Screens/5home.dart';
import 'package:assignment/TourismAppUI2/Screens/6details.dart';
import 'package:assignment/TourismAppUI2/Screens/7explore.dart';
import 'package:assignment/TourismAppUI2/Screens/8payment.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: IntroScreen(),
  routes:{ 'login signup':(context)=>Log_Sign(),
    'login':(context)=>const Log2(),
    'register':(context)=>Sign(),
    'home':(context)=>Tour_Home1(),
    'details':(context)=>const DetailsPage(),
    'explore':(context)=>const ExploreNow(),
    'pay':(context)=>const Payment(),
  }

  ));
}
class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState(){
    Timer(const Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=>  Log_Sign ()));
    } );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Center(
        child: Image.asset('asset/icons/168104-travel-icon-free-download-png-hq.png',
          width: 300,height: 300,),
      ),
    );
  }
}