import 'package:assignment/TourismAppUI2/Data/Dummydata.dart';
import 'package:assignment/TourismAppUI2/Screens/6details.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
      home:Tour_Home1()));
}

class Tour_Home1 extends StatefulWidget {
  @override
  State<Tour_Home1> createState() => _Tour_Home1State();
}

class _Tour_Home1State extends State<Tour_Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      CustomScrollView(
          slivers: [
            const SliverAppBar(
              floating: true,
              pinned: true,
              backgroundColor: Colors.grey,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: CircleAvatar(backgroundColor: Colors.blue,),
                ),
              ],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Go', style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),),
                  Text('Fast', style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    hintText: 'Search',
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ]),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Popular Places',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: (){}, child: const Text('View all',style: TextStyle(color: Colors.black87),)),
                  )
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return GestureDetector(
                    onTap: () =>
                        Navigator.of(context).pushNamed('details', arguments: Places[index]['id'] ),
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                            child: Stack(children:[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: GestureDetector(
                                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const DetailsPage())),
                                      child: Image.network(Places[index]['image'],fit: BoxFit.contain,))),
                              Positioned(
                                  left: 10,
                                  top: 10,
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    color: Colors.blue,
                                    child:Text('${Places[index]['price']}',style: const TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold,
                                    ),textAlign: TextAlign.center,),
                                  )),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Column(
                                  children: [
                                    Text(Places[index]['name'],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: Places.length,
              ),
            )
          ]
      ),

      drawer: Drawer(
        backgroundColor: Colors.lightBlue[200],
        child: ListView(
          children:  [
            const ListTile(
              leading: Icon(Icons.home, color: Colors.black,),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.settings_outlined, color: Colors.black,),
              title: Text('Settings'),
            ),
            const Divider(
                height: 100,
                color: Colors.black,
                indent: 10,
                endIndent: 10
            ),
          ],
        ),
      ),
    );
  }
}

