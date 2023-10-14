import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MusicPlayerUI1() ,));
}

class MusicPlayerUI1 extends StatefulWidget {

  @override
  State<MusicPlayerUI1> createState() => _MusicPlayerUI1State();
}

class _MusicPlayerUI1State extends State<MusicPlayerUI1> {

  var playlist=[
    'asset/images/img_14.png',
    'asset/images/img_10.png',
    'asset/images/img_11.png',
    'asset/images/img_12.png',
    'asset/images/img_13.png',
    'asset/images/img_9.png'
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            centerTitle:true,
            pinned: true,
            title: Text('Playlists',
                style:
                  GoogleFonts.monda(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink[100]
                  )
                ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Container(
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(45)
                    ),
                  child:
                  TextField(
                    style: TextStyle(
                      color: Colors.white70
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                      hintText:'Search...',
                      hintStyle: GoogleFonts.montserrat(color: Colors.pink[100]),
                      filled: true,
                      fillColor:Colors.grey[850] ,
                      suffixIcon: Icon(Icons.search_rounded,color: Colors.pink[100],)
                    ),
                  )),
            ),
              ),
          SliverList(delegate: SliverChildBuilderDelegate(
                  (context, index) => StaggeredGrid.count(
                    crossAxisCount:2,
                    mainAxisSpacing:2,
                    crossAxisSpacing:1,
                    children:
                      List.generate(
                        6,
                          (index)=>StaggeredGridTile.count(
                            crossAxisCellCount:1,
                            mainAxisCellCount:1,
                            child:Padding(
                              padding: const EdgeInsets.all(25),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(playlist[index],
                                      fit: BoxFit.cover,),),
                                ),
                            ),
                            ) ,)
                      )
                  ),
          ),
            ],
        ),
      bottomNavigationBar: SalomonBottomBar(currentIndex: currentIndex,onTap: (index){
        setState(() {
          currentIndex = index;
          onTap: (i) => setState(() => currentIndex = i);
        }
        );
      },
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home,color: Colors.white,),
              title: Text(''),
              selectedColor: Colors.pink[100]),
          SalomonBottomBarItem(
              icon: Icon(Icons.search,color: Colors.white,),
              title: Text(''),
              selectedColor: Colors.pink[100]),
          SalomonBottomBarItem(
              icon:Icon(Icons.play_circle_outline,color: Colors.white,),
              title: Text('Playlist',style: TextStyle(color: Colors.white)),
              selectedColor: Colors.pink[100]),
          SalomonBottomBarItem(
              icon: Icon(Icons.more_horiz,color: Colors.white,),
              title: Text(''),
              selectedColor: Colors.pink[100])
        ],
      ),
     );
  }
}
