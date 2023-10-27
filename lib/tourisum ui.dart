import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel(),));
}
class Hotel extends StatelessWidget {
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



          Positioned(
            bottom: 330,left: 15,
            child: Text('USA ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19
              ),),
          ),
          Positioned(
            bottom: 170,left: 15,
            child: Text(
                "\n and is a short distance from prime business districts, malls, and airports. "
                "\nOur clean and accommodating guest rooms were designed with your comfort in mind, featuring thoughtful amenities to brighten your stay."
                "\nWork out in our fitness centre, with steam room, hot tub, and gym."
                "\nEnjoy our outdoor pool, beauty salon, bookstore, three restaurants, and cyber café. "
                "\nRooms come with coffee and tea maker, high-speed Internet, mini-bar, DVD players, LCD TVs, mineral water, and cookie jars."
                "\nSuites, accessible rooms, and private meeting and conference rooms are available. "
                " \nEnjoy our complimentary continental breakfast served daily." ),

          ),
          Positioned(
              bottom: 30,left: 130,
              child:Container(
                height: 45,
                width: 700,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),color: Colors.purple),
              )),
          Positioned(
            bottom: 80,left: 130,
            child:Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),color: Colors.purple,
                image: DecorationImage(
                    image: AssetImage('asset/images/5.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),),
    Positioned(
    bottom: 80,left: 450,
          child:Container(
            height: 80,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),color: Colors.purple,
              image: DecorationImage(
                  image: AssetImage('asset/images/5.jpeg'),
                  fit: BoxFit.cover),
            ),
          ),),
          Positioned(
            bottom: 80,left: 740,
            child:Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),color: Colors.purple,
                image: DecorationImage(
                    image: AssetImage('asset/images/5.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),),
          Positioned(
            bottom: 38,left: 400,
            child: Text("Press to Explore",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
              ),),
          ),
        ],
      ),
    );
  }
}