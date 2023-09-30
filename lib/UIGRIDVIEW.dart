import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        body: MyGridView(),

    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
      ),
      itemCount: 12, // Number of grid items
      itemBuilder: (context, index) {
        // Define colors and icons for each grid item
        List<Color> colors = [Colors.red, Colors.blue,
          Colors.green, Colors.orange,
          Colors.grey,Colors.pink,
          Colors.teal,Colors.black38,Colors.yellow,
          Colors.red,Colors.orange,Colors.brown];
        List<IconData> icons = [ Icons.home,
          Icons.notification_add,
          Icons.camera,
          Icons.star, Icons.wifi_1_bar_outlined,
          Icons.bookmark,Icons.phone, Icons.message,
          Icons.newspaper,
          Icons.sim_card, Icons.mic_off_rounded,
          Icons.picture_as_pdf_outlined];
        return Container(
         constraints: BoxConstraints(
           minWidth: 30.0,minHeight: 10.0,
           maxWidth: 50.0,maxHeight: 30.0
         ),margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: colors[index],
            borderRadius: BorderRadius.circular(30.0),
          ),

            child: Row(
              children: [
                Icon(
                  icons[index],
                  size: 80.0,
                  color: Colors.black38,
                ),
                     Padding(
                       padding: const EdgeInsets.all(50.0),
                       child: Column(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                       Text('Heart',style: TextStyle(color:Colors.black38,fontSize: 25)),


                        Text('Shaker',style: TextStyle(color:Colors.black38,fontSize: 25)),

                ],),
                     ),
       ],),
        );
      },
    );
  }
}