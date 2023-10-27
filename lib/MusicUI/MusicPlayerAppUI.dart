import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Music_UI3(),));
}

class Music_UI3 extends StatefulWidget {

  @override
  State<Music_UI3> createState() => _Music_UI3State();
}

class _Music_UI3State extends State<Music_UI3> {
  double _sliderValue = 0.0;
  double _maxValue =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Padding(
          padding: const EdgeInsets.only(right: 45),
          child: Center(
            child: Text('Now playing',
              style: GoogleFonts.albertSans(
                  color: Colors.pink[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 25),),
          ),
        ),
        leading: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.pink[200],),
      ),
      body:Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10) ,
                image:const DecorationImage(
                    image: NetworkImage('https://c-cl.cdn.smule.com/smule-gg-s-sf-bck2/arr/1b/d1/4c594b59-8488-4873-9535-02add08fc49f.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 50,),
            Text('Malare Mounama',
              style:GoogleFonts.albertSans(
                  color: Colors.pink[200]
                  ,fontSize: 20,
                  fontWeight: FontWeight.bold),),
            const SizedBox(height:15,),
            Text('S.P.Balasubrahmanyam & S.Janaki',
              style:GoogleFonts.albertSans(
                color: Colors.white,
                fontSize: 12,),),
            SizedBox(height: 30,),
            Slider(value: _sliderValue,
                activeColor: Colors.pink[200],
                inactiveColor: Colors.pink[200],
                min: 0.0,
                max:_maxValue,
                onChanged: (value){
                       setState(() {
                          _sliderValue=value;
                       });},
            ),
            const Padding(
              padding: EdgeInsets.only(top:1),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('00:03',style: TextStyle(color: Colors.white,fontSize: 14),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:380),
                    child: Text('5:05',style: TextStyle(color: Colors.white,fontSize: 14),),
                  ),
                ],
              ),
            ),
            const SizedBox(height:15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30),
                  child: Icon(Icons.download,color: Colors.pink[200],size: 25,),
                ),

                const Padding(
                  padding: EdgeInsets.only(left:380),
                  child: Icon(Icons.star_outline,color: Colors.white,size: 25,),
                ),
              ],
            ),
            const SizedBox(height:10,),
            Padding(
              padding: const EdgeInsets.only(left:120),
              child: Row(
                children: [
                  const Icon(Icons.shuffle_sharp,color: Colors.white,size: 20,),
                  const SizedBox(width: 15,),
                  const Icon(Icons.skip_previous,color: Colors.white60,size: 55,),
                  Icon(Icons.pause_circle,color: Colors.pink[200],size: 55,),
                  const Icon(Icons.skip_next_sharp,color: Colors.white60,size: 55,),
                  const SizedBox(width: 15,),
                  const Icon(Icons.loop,color: Colors.white,size: 20,),
                ],
              ),
            ),
           // SizedBox(height:5,),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:30),
                  child: Icon(Icons.volume_mute_sharp,color: Colors.white,size: 25,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 380),
                  child: Icon(Icons.queue_music_outlined,color: Colors.white,size: 25,),
                )
              ],
            ),
            const SizedBox(height:40,),
            Padding(
              padding: const EdgeInsets.only(left:178),
              child: Row(
                children:[
              Text('Playlist',style: TextStyle(color: Colors.pink[200],fontSize: 14),),
                  const SizedBox(width:10,),
              const Text('|',style: TextStyle(color: Colors.white,fontSize: 15)),
                  const SizedBox(width:10,),
              Text('Lyrics',style: TextStyle(color: Colors.pink[200],fontSize: 14)),
                ]
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
