import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner:false,home: Payment(),));
}

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
        body: Center(
            child: Column(
              children: [
                Lottie.asset('asset/animations/Animation - 1698402598590.json'),
                const SizedBox(height:5,),
                Text('Payment Successful !',style: GoogleFonts.albertSans(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 15),)
              ],
            )),
    );
  }
}
