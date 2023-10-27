import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridVieww(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridVieww extends StatelessWidget {
  var names = [
    'U.S.A',
    'Russia',
    'Canada',
    'England',
    'France',
    'Germany',
  ];

  var pics = [
    'asset/images/234.jpeg',
    'asset/images/5.jpeg',
    'asset/images/img.png',
    'asset/images/234.jpeg',
    'asset/images/234.jpeg',
    'asset/images/5.jpeg'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Great Outdoorss!!',
          style: GoogleFonts.b612(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        itemCount: 6,
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.all(10), // Adjust margin for spacing
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Adjust the borderRadius
                    image: DecorationImage(
                      image: AssetImage(pics[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    child: Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20, // Adjust font size
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            offset: Offset(3, 3),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}