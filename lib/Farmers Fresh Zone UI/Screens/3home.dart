import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home: Homee(),));
}

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {

  var title=[
    'OFFERS',
    'VEGETABLES',
    'FRUITS',
    'EXOTIC',
    'FRESH CUTS',
    'NUTRITION CHARGERS',
    'PACKED FLAVORS',
    'GOURMET SALADS'
  ];
   bool isSelected=false;
  void ShowSheet(BuildContext context){
    showModalBottomSheet(context: context, builder:(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: const Row(
            children: [
              Text('CHOOSE YOUR LOCATION',style: TextStyle(color: Colors.black,fontSize: 15),),
              // GestureDetector(
              //   onTap: (){
              //     showModalBottomSheet(context: context, builder: (BuildContext context){
              //       return ShowSheet();
              //     });
              //  },
              // )
            ],
          ),
        ),
        body:Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,  // Choose the color you want for the border
                      width: 1.0,          // Choose the width you want for the border
                    ),
                  ),
                  height: 200,
                  width: 200,
                 // color: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('data:image/jpeg;base64,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'
                              'kCDUCsYwDJnAOcyfznvpXX5a3DmrXQn06gk0asMoLQCVid94OMR4g/kgrsKdW8lXJJBgTGMAbAAYkzoNlww6F+g/lr2ppgRrut1l//Z'),
                          maxRadius: 50,
                        ),
                        SizedBox(height: 30,),
                        Text('Thrissur'),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isSelected=!isSelected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected?Colors.grey[300]:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: isSelected?Colors.green:Colors.black,  // Choose the color you want for the border
                      width: 1.0,          // Choose the width you want for the border
                    ),
                  ),
                  height: 200,
                  width: 200,
                 // color: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        CircleAvatar(
                      backgroundImage: NetworkImage('https://www.shutterstock.com/image-vector/cochin-kochi-kerala-south-india-600w-1260670840.jpg'),
                          maxRadius: 50,
                    ),
                        SizedBox(height: 30,),
                        Text('Kochi'),
                      ],
                    ),
                  ),
                //decoration:,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.grey[300]: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color:isSelected? Colors.green:Colors.black,
                        width: 1.0,
                      ),
                    ),
                    height: 200,
                    width: 200,
                    //color: Colors.grey[300],
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/03/20/49/94/360_F_320499455_nVO4149hsD9Ott2yyaN7BhjtKy795Pei.jpg'),
                            maxRadius: 50,
                          ),
                          SizedBox(height: 30,),
                          Text('Trivandrum'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green[600],
            floating: true,
            pinned: false,
            expandedHeight: 100,
            title: Text('Farmers Fresh Zone',
              style: GoogleFonts.notoSans(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),),
            actions: [
              Row(
                children: [
                  const Icon(Icons.place_outlined,size: 18,),
                  const SizedBox(width: 5,),
                  const Text('Kochi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  GestureDetector(
                      onTap: (){
                        ShowSheet(context);
                      },
                      child: const Icon(Icons.keyboard_arrow_down))
                ],
              ),
              ],
              bottom: AppBar(
                backgroundColor: Colors.green[600],
                title: Container(height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: 'Search For Vegetables, Fruits..',
                        prefixIcon: const Icon(Icons.search)
                    ),
                  ),
                ),
              ),
          ),
          SliverToBoxAdapter(
            child:
          Container(
            height: 60, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  width: 150,// Adjust the width as needed
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(title[index],style: TextStyle(fontSize: 12,color: Colors.green[900],fontWeight: FontWeight.bold),),
                );
              },
            ),
          ),),
          SliverList(delegate: SliverChildBuilderDelegate(childCount: 1,(context, index) =>
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CarouselSlider(items: [
                      Container(
                       // width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZHmh1bnaacMh2boiGQyFYxxpoe544Db5JnRuFYkfQ58e7G14_1IlYmiuIm_BH0LIRcEA&usqp=CAU',
                          ),//fit: BoxFit.fitWidth,
                          )
                        ),
                      ),
                      Container(
                      //  width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRezUuWkXcCWjZTNoAxh-7qtYSzr8jqCvT8dg&usqp=CAU',
                            ),//fit: BoxFit.fitWidth,
                               )
                        ),
                      ),
                      Container(
                       // width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGlJtSv7NGEiiBObWkzSRtFdHdBEbNvx4q7Q&usqp=CAU',
                            ),//fit: BoxFit.fitWidth,
                            )
                        ),
                      ),
                      Container(
                       // width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4c5DXnkj43NKrnqU-EjFy9_GNBi08LO8ydg&usqp=CAU',
                            ),//fit: BoxFit.fitWidth
                            )
                        ),
                      ),
                      Container(
                        //width: double.infinity,
                       // margin:EdgeInsets.symmetric(vertical: 20) ,
                        decoration: BoxDecoration(
                            image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRagdjwCpsUZp55O8QaXq_yebkuLFuJqNboiQ&usqp=CAU',
                            ),//fit: BoxFit.fitWidth,
                            )
                        ),
                      )
                    ],
                        options:CarouselOptions(
                          autoPlayInterval: Duration(seconds:5),
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          autoPlay: true,
                          viewportFraction:1,
                          aspectRatio: 16/9
                        ) ),
                    Container(
                      width: 800,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    )
                  ],
                ),
              ),),)
        ],
      ),
    );
  }
}
