import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Profile()));
}
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.menu),
        title: const Center(
            child: Text('Profile')),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[];
          }),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                child: Image.asset('asset/images/img_7.webp',
                fit: BoxFit.cover,
                  width: 2500,
                ),
              ),
            ],
          ),
          const Center(
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left:50),
                    child: Padding(
                      padding: EdgeInsets.only(top:55),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                         ),
                          Icon(Icons.message,color: Colors.white,)
                         ]
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:280),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:Colors.white,
                        width: 3
                      )
                    ),
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('asset/images/img_7.png'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text('Monkey D Luffy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize:15)),
                  const SizedBox(height: 4),
                  const Text('Anime Character',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize:10)),
                ]
              ),
            ),
          ),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right:50),
                  child: Padding(
                    padding: EdgeInsets.only(top:55),
                    child: Stack(
                      alignment: Alignment.center,
                      children:[
                        CircleAvatar(
                        radius: 25,
                      ),
                    Icon(Icons.add,color: Colors.white,)
        ],
      ),
                  ),
                ),
              ],
            ),
          ),
    ]
    )
    );
  }
}
