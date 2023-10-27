import 'package:assignment/TourismAppUI2/Screens/8payment.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExploreNow(),));
}

class ExploreNow extends StatefulWidget {
  const ExploreNow({super.key});

  @override
  State<ExploreNow> createState() => _ExploreNowState();
}

class _ExploreNowState extends State<ExploreNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 390),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/5.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),

          const Positioned(
            bottom: 440,left: 30,
            child: Text('sivan plaza\nKochi, Kerala',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
          Positioned(
              bottom: 400,left: 32,
              child:Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),color: Colors.grey),
              )),
          const Positioned(
              bottom: 406,
              left: 43,
              child: Text("8.4/85 reviews",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white
                ),)),
          const Positioned(
            bottom: 406,right: 43,
            child: Icon(Icons.favorite_border,
              color: Colors.white,
              size: 28,),
          ),
          const Positioned(
            bottom: 340,left: 20,
            child: Icon(Icons.star,
              color: Colors.purple,
              size: 28,),
          ),
          const Positioned(
            bottom: 340,left: 50,
            child: Icon(Icons.star,
              color: Colors.purple,
              size: 28,),
          ),
          const Positioned(
            bottom: 340,left: 80,
            child: Icon(Icons.star,
              color: Colors.purple,
              size: 28,),
          ),
          const Positioned(
            bottom: 340,left: 110,
            child: Icon(Icons.star,
              color: Colors.purple,
              size: 28,),
          ),
          const Positioned(
            bottom: 340,left: 140,
            child: Icon(Icons.star,
              color: Colors.grey,
              size: 28,),
          ),
          const Positioned(
            bottom: 310,left: 19,
            child: Icon(Icons.location_on_rounded,
              color: Colors.grey,
              size: 28,),
          ),
          const Positioned(
            bottom: 310,left: 47,
            child: Text("8 Km to LuluMall",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
              ),),
          ),
          const SizedBox(height:8,),
          Positioned(
              bottom: 260,left: 130,
              child:InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Payment()));
                },
                child: Container(
                  height: 45,
                  width: 700,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),color: Colors.purple),
                ),
              )),
          const Positioned(
            bottom: 274,left: 415,
            child: Text("Book Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),),
          ),
          const Positioned(
            bottom: 342,right: 45,
            child: Text("\$100",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 18
              ),),
          ),
          const Positioned(
            bottom: 320,right: 20,
            child: Text("/per night",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
              ),),
          ),
          const Positioned(
            bottom: 200,left: 15,
            child: Text('Sivan plaza ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19
              ),),
          ),
          const Positioned(
            bottom: 50,left: 15,
            child: Text("Sivan plaza hotel on kochi is ideally located at the shores of kochi kayal"
                "\n and is a short distance from prime business districts, malls, and airports. "
                "\nOur clean and accommodating guest rooms were designed with your comfort in mind, featuring thoughtful amenities to brighten your stay."
                "\nWork out in our fitness centre, with steam room, hot tub, and gym."
                "\nEnjoy our outdoor pool, beauty salon, bookstore, three restaurants, and cyber café. "
                "\nRooms come with coffee and tea maker, high-speed Internet, mini-bar, DVD players, LCD TVs, mineral water, and cookie jars."
                "\nSuites, accessible rooms, and private meeting and conference rooms are available. "
                " \nEnjoy our complimentary continental breakfast served daily." ),

          ),
          const Positioned(
            bottom: 18,left: 289,
            child: Icon(Icons.search,
              color: Colors.purple,
              size: 20,),
          ),
          const Positioned(
            bottom: 18,left: 489,
            child: Icon(Icons.favorite,
              color: Colors.grey,
              size: 20,),
          ),
          const Positioned(
            bottom: 18,left: 689,
            child: Icon(Icons.settings,
              color: Colors.grey,
              size: 20,),
          ),
          const Positioned(
            bottom: 5,left: 289,
            child: Text('search',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.purple
              ),),
          ),
          const Positioned(
            bottom: 5,left: 489,
            child: Text('favourite',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
              ),),
          ),
          const Positioned(
            bottom: 5,left: 689,
            child: Text('setting',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
              ),),
          ),

        ],
      ),
    );
  }
}