import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MusicUI()));
}

class MusicUI extends StatefulWidget {

  @override
  State<MusicUI> createState() => _MusicUIState();
}

class _MusicUIState extends State<MusicUI> {
  var images =[
    'asset/images/img_16.png',
    'asset/images/img_15.png',
    'asset/images/img_17.png'
  ];

  var music=[
    'asset/images/img_23.png',
    'asset/images/img_20.png',
    'asset/images/img_19.png',
    'asset/images/img_21.png',
    'asset/images/img_22.png',
    'asset/images/img_24.png',
    'asset/images/img_25.png',
    'asset/images/img_18.png',
    'asset/images/img_26.png',
    'asset/images/img_27.png'
  ];
  var artist=[
    'Sia',
    'R master',
    'Lisa',
    'Toaka',
    'Eve',
    'Ruth B',
    'the Weeknd',
    'Ikimonogakari',
    'Taylor Swift',
    'Jeon Jungkook',
  ];
  var title=[
    'Never Give Up',
    'Binks No Sake',
    'Gurenge',
    'Suzume no Tojimari',
    'Kaikai Kitan',
    'Dandelions',
    'Starboy',
    'Blue Bird',
    'Love Story',
    'Still with you',
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey[900],
            title: Text('Musify',style: TextStyle(color: Colors.pinkAccent[100],fontSize:30,fontWeight: FontWeight.bold),),
            centerTitle:true ,
           pinned: false,
           floating: true,
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
                  (context, index) =>SingleChildScrollView(
              scrollDirection:Axis.horizontal,
          child:Row(
            children: List.generate(
                2,
                    (index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    child: ClipRRect(
                        borderRadius:
                        BorderRadius.circular(45),
                        child: Image.asset(images[index])),
                  ),
                )),
          ),
                  ),
            childCount: 1,
          ),
          ),
          SliverToBoxAdapter(
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Recommended for you',style: GoogleFonts.montserrat(fontSize: 20,
                  fontWeight: FontWeight.bold,color: Colors.pink[100]),),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Column(
            children: List.generate(8, (index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                leading: Container(height: 55,width: 55,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage(music[index]),fit: BoxFit.cover)
                  ),
                  // child: Image.asset(sugg[index])
                ),
                title: Text(title[index],style: GoogleFonts.montserrat(color: Colors.pink[100],fontWeight: FontWeight.bold),),
                subtitle: Text(artist[index],style: TextStyle(color: Colors.white),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star_border_outlined,color: Colors.pink[100],),
                    SizedBox(width: 60,),
                    Icon(Icons.download_outlined,color:Colors.pink[100],)
                  ],),
              ),
            )),
          ),childCount: 1))
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                title: Text('Home'),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                title: Text(''),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.play_circle_sharp,color: Colors.white,),
                title: Text(''),
                selectedColor: Colors.pink[100]),
            SalomonBottomBarItem(
                icon: Icon(Icons.more_horiz,color: Colors.white,),
                title: Text(''),
                selectedColor: Colors.pink[100])
          ]),
    );
  }
}
