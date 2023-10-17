import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Refractor extends StatelessWidget {
 NetworkImage?image;
 String?name;
 String?text;
 String?price;
 String?rating;
 IconData?icon;
 String?sale;

 Refractor({
  required this.image,
  required this.name,
  required this.text,
  required this.price,
  required this.rating,
  required this.icon,
  required this.sale,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
     color: Colors.black54,
     child: Column(
         children: [
       Padding(
         padding: const EdgeInsets.all(15),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(10),
           child: Container(
               color: Colors.white,
               height: 120,
               width: 120,
               child: Image(image: image!,)),
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(right:70),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(name!,textAlign: TextAlign.end,style: GoogleFonts.josefinSans(color:Colors.white,fontSize: 12,fontWeight: FontWeight.bold ),),
         SizedBox(height: 3,),
         Text(text!,textAlign: TextAlign.end,style: GoogleFonts.josefinSans(color:Colors.white,fontSize: 12,fontWeight: FontWeight.bold ),),
         SizedBox(height: 5,),
         Text(price!,textAlign: TextAlign.end,style: GoogleFonts.josefinSans(color:Colors.blueAccent,fontSize: 12,fontWeight: FontWeight.bold ),),
    ]
         ),
       ),
     Padding(
       padding: const EdgeInsets.only(bottom:1),
       child: Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 30),
             child: RatingBar.builder(
              initialRating:4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating:true,
              itemCount: 5,
              itemSize: 15,
              itemPadding: EdgeInsets.symmetric(horizontal:1),
              itemBuilder: (context, _) => Icon(
               Icons.star_outlined,
               color: Colors.amber,

              ),
              onRatingUpdate: (rating) {
               print(rating);
              },
             ),
           ),
          SizedBox(width: 60,),

          Column(
            children: [
             Icon(icon! ,size: 20,color: Colors.white70,),
              SizedBox(height: 8,),
              Text(sale!,style: TextStyle(color: Colors.white70,fontSize: 10),),
            ],
          )
         ]
       ),
     )
        ]
     )
   );
  }
}
