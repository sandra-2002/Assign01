import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Country {
  final String name;
  final String description;
  final String firstPageImageUrl;
  final String secondPageImageUrl;

  Country({
    required this.name,
    required this.description,
    required this.firstPageImageUrl,
    required this.secondPageImageUrl,
  });
}

class MyApp extends StatelessWidget {
  final List<Country> countries = [
    Country(
      name: 'USA',
      description: 'Explore the United States and its beauty',


      firstPageImageUrl: 'asset/images/5.jpeg', // Replace with actual image URL for the first page
      secondPageImageUrl: 'asset/images/3.jpeg', // Replace with actual image URL for the second page
    ),

    Country(
      name: 'Canada',
      description: 'Explore Canada and its beauty',


      firstPageImageUrl: 'asset/images/3.jpeg', // Replace with actual image URL for the first page
      secondPageImageUrl: 'asset/images/3.jpeg', // Replace with actual image URL for the second page
    ),
    Country(
      name: 'India',
      description: 'Explore India and its beauty',


      firstPageImageUrl: 'asset/images/img.png', // Replace with actual image URL for the first page
      secondPageImageUrl: 'asset/images/img.png', // Replace with actual image URL for the second page
    ),

    Country(
      name: 'France',
      description: 'Explore France and its beauty',


      firstPageImageUrl: 'asset/images/img_1.png', // Replace with actual image URL for the first page
      secondPageImageUrl: 'asset/images/img_1.png', // Replace with actual image URL for the second page
    ),
    // Add more countries here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tourism App'),
        ),
        body: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CountryDetailsPage(country: countries[index]),
                  ),
                );
              },
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.network(
                    countries[index].firstPageImageUrl,
                    width: double.infinity, // Full width of the screen
                    height: 200.0, // Set the desired height for the image on the first page
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      countries[index].name,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CountryDetailsPage extends StatelessWidget {
  final Country country;

  CountryDetailsPage({required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      //SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Image.network(country.secondPageImageUrl,height:400.0),
                ],
              ),


          // Image on the second page
        SizedBox(height: 20.0),
          Positioned(bottom:200, left:10,
              child:Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    country.description,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              )),
          SizedBox(height: 20.0),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: _buildImageContainer(country.secondPageImageUrl),
                  ), // Small images on the second page
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: _buildImageContainer(country.secondPageImageUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: _buildImageContainer(country.secondPageImageUrl),
                  ),

                ],
              ),
            ),
          ),
SizedBox(height: 30.0,),
           Row(crossAxisAlignment:CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                 child: Container(
                  width: 450,height: 40,decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),color: Colors.purple),

                   // Background color of the container
                  child: Row(crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Center(
                          child: Text(
                            'Press to Explore',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
               ),
             ],
           ),
        ],
     ),
    );
  }

  Widget _buildImageContainer(String imageUrl) {
    return Container(
        margin: EdgeInsets.all(8.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
            ),
        );
  }
}